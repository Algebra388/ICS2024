/*
 * name: <张乐天>
 * student-id: <2300012938>
 */
#include <stdio.h>
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define MAX_BUF 8192
#define max_objects 10

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
struct Message
{
    char host[MAX_BUF];
    char uri[MAX_BUF];
    char port[MAX_BUF];
};
void *thread(void *vargp);
void process_proxy(int connfd);
void just_do_it(int client_fd, rio_t *rio, char *url);
int parse_url(char *url, struct Message *msg);
int parse_host_head(rio_t *rio, struct Message *msg, char *newhead);
/// do not use uppercase because of unix_error(0)
int verbose = 0;
sem_t mutex, w, mutex2;
int cur_time, all_size;
struct ELEM
{
    int time, size;
    char url[MAX_BUF];
    char response[MAX_OBJECT_SIZE];
}array[max_objects];
int num_cache_used;
int main(int argc, char **argv)
{
    sem_init(&mutex, 0, 1);
    sem_init(&w, 0, 1);
    sem_init(&mutex2, 0, 1);
    num_cache_used = 0;
    if(verbose)
    {
        printf("entering main!\n");
    }
    signal(SIGPIPE, SIG_IGN);/// ignore SIGPIPE
    //printf("%s", user_agent_hdr);
    /*
    build a framework that is a thread-based server
    */
    int listenfd, *connfdp;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;
    if(argc != 2)
    {
        fprintf(stderr, "1.usage: %s <port>\n", argv[0]);
        exit(-1);
    }
    listenfd = open_listenfd(argv[1]);
    while(1)
    {
        clientlen = sizeof(struct sockaddr_storage);
        connfdp = malloc(sizeof(int));
        *connfdp = accept(listenfd, (SA *) &clientaddr, &clientlen);
        pthread_create(&tid, NULL, thread, connfdp);
    }
    /// it's a good way to close file
    close(listenfd);
    return 0;
}

void *thread(void *vargp)
{
    if(verbose)
    {
        printf("entering thread %ld!\n", pthread_self());
    }
    int connfd = *((int *) vargp);
    pthread_detach(pthread_self());
    free(vargp);
    process_proxy(connfd);
    close(connfd);
    return NULL;

}

/// process the GET request
void process_proxy(int connfd)
{
    if(verbose)
    {
        printf("entering process_proxy!\n");
    }
    rio_t rio;
    static char buf[MAX_BUF];
    rio_readinitb(&rio, connfd);
    if(rio_readlineb(&rio, buf, MAX_BUF) <= 0) ///failed
    {
        fprintf(stderr, "2.Nothing to read!!!\n");
        close(connfd);
        exit(0);
        return ;
    }
    char way[MAX_BUF], url[MAX_BUF], ver[MAX_BUF];
    if(sscanf(buf, "%s%s%s", way, url, ver) != 3)
    {
        fprintf(stderr, "3.request failed!!!\n");
        close(connfd);
        return ;
    }
    if(strcmp("GET", way) != 0)
    {
        close(connfd);
        return ;
    }
    just_do_it(connfd, &rio, url);
    close(connfd);
    return ;
}
/*
this function is to parse the first line of the request
e.g.
GET 
*/ 

int parse_url(char *url, struct Message *msg)
{
    if(verbose)
    {
        printf("entering parse_url\n");
    }
    if(strstr(url, "http://") == NULL)
    {
        fprintf(stderr, "4.Not a http request!\n");
        return 0;///failed
    }
    int s = strlen("http://"), p = 0;
    while(s < strlen(url) && url[s] != '/'  && url[s] != ':')
    {
        msg -> host[p] = url[s];
        s++, p++;
    } 
    msg -> host[p] = 0;
    p = 0;
    if(url[s] == ':')
    {
        s++;
        while(s < strlen(url) && url[s] != '/')
        {
            msg -> port[p] = url[s];
            s++, p++;
        } 
    }
    if(p == 0) msg -> port[0] = '8', msg -> port[1] = '0', p = 2;
    msg -> port[p] = 0;
    p = 0; s++;
    msg -> uri[p] = '/';
    p++;
    if(verbose) printf("%s\n", url + s);
    while(s < strlen(url) && url[s] != ':')
    {
        msg -> uri[p] = url[s];
        s++, p++;
    } 
    msg -> uri[p] = 0;
    if(verbose)
    {
        printf("url is %s\n", url);
        printf("host = %s, port = %s, uri = %s\n", msg -> host, msg -> port, msg -> uri);
    }
    return 1;
}
/*
parse the host head
*/
int parse_host_head(rio_t *rio, struct Message *msg, char *newhead)
{
    if(verbose)
    {
        printf("entering parse_host_head\n");
    }
    int flag = 0;/// if have 
    char buf[MAX_BUF * 2];
    while(1)
    {
        rio_readlineb(rio, buf, MAX_BUF);
        if(verbose)
        {
            printf("read:%s\n",buf);
        }
        /*
        if(strstr(buf, "HOST:") != NULL)
        {
            flag = 1;/// do not need to add host
        }/// always send a header
        */
        if(strstr(buf, "HOST:") != NULL) continue;
        if(strcmp(buf, "\r\n") == 0 || strcmp(buf, "\n") == 0) break;
        if(strstr(buf, "Connection:") != NULL ||\
            strstr(buf, "Proxy-Connection") != NULL ||\
            strstr(buf, "User-Agent") != NULL) continue;
        strcat(newhead, buf);
    }
    if(!flag) 
    {
        sprintf(buf, "Host:%s\r\n", msg -> host);
        strcat(newhead, buf);
    }
    strcat(newhead, user_agent_hdr);
    strcat(newhead, "Connection: close\r\n");
    strcat(newhead, "Proxy-Connection: close\r\n");
    if(verbose)
    {
        printf("newhead is %s", newhead);
    }
    return 1;
}
/*
sem_t mutex, w;
int cur_time, all_size;
const int max_objects = 10;
struct ELEM
{
    int time, size;
    char url[MAX_BUF];
    char response[MAX_OBJECT_SIZE];
}array[max_objects];
int num_cache_used;
*/
///reader and writer model
int counter;
int verbose2 = 0;
int cached(rio_t *rio, char *url, int fd)
{
    //if(verbose2) puts("1");
    P(&mutex);///protect counter
    counter++;
    if(counter == 1) P(&w);
    V(&mutex);
    int hiting = 0;
    for(int i = 0; i < num_cache_used; ++i)
    {
        if(strcmp(array[i].url, url) == 0)
        {
            if(verbose2)
            {
                printf("caching success!\n");
            }
            P(&mutex2);
            array[i].time = ++cur_time;
            V(&mutex2);
            hiting = 1;
            rio_writen(fd, array[i].response, array[i].size);
            break;
        }
    }
    P(&mutex);
    counter--;
    if(counter == 0) V(&w);
    V(&mutex);
    return hiting;
}
void caching(char *url, char *buf, int len)
{
    //if(verbose2) puts("2");
    P(&w);
    if(num_cache_used < max_objects)
    {
        P(&mutex2);
        ++cur_time;
        V(&mutex2);
        memset(array[num_cache_used].response, 0, sizeof(array[num_cache_used].response));
        for(int i = 0; i < len; ++i) array[num_cache_used].response[i] = buf[i];
        memcpy(array[num_cache_used].url, url, sizeof(array[num_cache_used].url));
        array[num_cache_used].size = len;
        array[num_cache_used].time = cur_time;
        ++num_cache_used;
    }
    else///LRU
    {
        int ch = 0;
        for(int i = 1; i < max_objects; ++i) if(array[i].time < array[ch].time) ch = i;
        P(&mutex2);
        ++cur_time;
        V(&mutex2);
        memset(array[ch].response, 0, sizeof(array[ch].response));
        for(int i = 0; i < len; ++i) array[ch].response[i] = buf[i];
        memcpy(array[ch].url, url, sizeof(array[ch].url));
        array[ch].size = len;
        array[ch].time = cur_time;
    }
    V(&w);
}
/// we will close clientfd after returning
void just_do_it(int client_fd, rio_t *rio, char *url)
{
    if(verbose)
    {
        printf("entering just_doit\n");
    }
    if(cached(rio, url, client_fd)) return ;
    struct Message msg;
    char header[MAX_BUF];
    if(!parse_url(url, &msg)) 
    {
        fprintf(stderr, "5.parse_url failed\n");
        return ;
    }
    if(!parse_host_head(rio, &msg, header)) 
    {
        fprintf(stderr, "6.parse_host failed\n");
        return ;
    }
    if(verbose)
    {
        printf("connect to %s %s\n", msg.host, msg.port);
    }
    int fd = open_clientfd(msg.host, msg.port);
    if(fd < 0)
    {
        fprintf(stderr, "host = %s port = %s\n", msg.host, msg.port);
        fprintf(stderr, "7.Cannot connect to the server\n");
        return ;
    }
    rio_t server;
    rio_readinitb(&server, fd);
    /// there we use "GET" to fetch messages from the server
    char query[MAX_BUF * 3];
    sprintf(query, "GET %s HTTP/1.0\r\n%s\r\n", msg.uri, header);// header
    ///take turns to read and write
    if(rio_writen(fd, query, strlen(query)) != strlen(query))
    {
        fprintf(stderr, "8.rio_write failed!\n");
        return ;
    }
    char response[MAX_BUF];
    int length = 0;
    /// may have several writes
    /// Finally, your proxy should read the server’s response and forward it to the client.
    /// directly
    if(verbose)
    {
        printf("reading...\n");
    }
    char buffer[MAX_OBJECT_SIZE * 2];
    int pos = 0;
    int cache_ok = 1;
    while((length = rio_readn(fd, response, MAX_BUF)) != 0)///otherwise is EOF
    {
        if(verbose)
        {
            printf("read:%s\n", response);
        }
        if(pos + length <= MAX_OBJECT_SIZE)
        {
            for(int i = 0; i < length; ++i) 
                buffer[pos++] = response[i];
        }
        else cache_ok = 0;
        ///have sth wrong
        if(length == -1)
        {
            fprintf(stderr, "9.rio_read failed !\n");
            close(fd);
            return ;
        }
        int write_len = rio_writen(client_fd, response, length);
        if(write_len != length)
        {
            fprintf(stderr, "10.rio_write failed !\n");
            close(fd);
        }
        ///cached
    }
    if(cache_ok) buffer[pos] = 0, caching(url, buffer, pos);
    close(fd);
    return ;
}