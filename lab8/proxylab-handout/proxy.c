/*
 * name: <张乐天>
 * student-id: <2300012938>
 */
#include <stdio.h>
#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

/// do not use uppercase because of unix_error(0)
int main(int argc, char **argv)
{
    signal(SIGPIPE, SIG_IGN);/// ignore SIGPIPE
    printf("%s", user_agent_hdr);
    /*
    build a framework that is a thread-based server
    */
    int listenfd, *connfdp;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;
    if(argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(-1);
    }
    listenfd = Open_listenfd(argv[1]);

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

}