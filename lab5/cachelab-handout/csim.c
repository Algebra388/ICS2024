//ID:2300012938
//NAME:张乐天
/*
this is a program to simulate how cache works.
it also contains how to parse the command lines.
*/
#include "stdio.h"
#include "cachelab.h"
#include "getopt.h"
#include "stdlib.h"
#include "unistd.h"
#include "math.h"
#include "string.h"
#include "malloc.h"
#include "ctype.h"
int s, S, b, B, E;
FILE* file;
int hits = 0, misses = 0, evictions = 0;
int **valid;
int **tag_b;
int **time_m;
//this function is to parse the command line by using function getopt
void parse_command_list(int argc, char * argv[])
{
    int opt;
    const char *str = "s:E:b:t:";
    while((opt = getopt(argc, argv, str)) != -1)
    {
        int l = strlen(optarg);
        if(opt == 's')
        {
            for(int i = 0; i < l; ++i) s = s * 10 + optarg[i] - '0';
            S = pow(2, s); 
        }
        else if(opt == 'E')
        {
            for(int i = 0; i < l; ++i) E = E * 10 + optarg[i] - '0';
        }
        else if(opt == 'b')
        {
            for(int i = 0; i < l; ++i) b = b * 10 + optarg[i] - '0';
            B = pow(2, b); 
        }
        else if(opt == 't')
        {
            file = fopen(optarg, "r");
        }
    }
    valid = (int **) malloc(sizeof(int *) * S);
    for(int i = 0; i < S; ++i) 
    {
        valid[i] = (int *) malloc(sizeof(int) * E);
        for(int j = 0; j < E; ++j) valid[i][j] = 0;
    }
    tag_b = (int **) malloc(sizeof(int *) * S);
    for(int i = 0; i < S; ++i) 
    {
        tag_b[i] = (int *) malloc(sizeof(int) * E);
        for(int j = 0; j < E; ++j) tag_b[i][j] = 0;
    }
    time_m = (int **) malloc(sizeof(int *) * S);
    for(int i = 0; i < S; ++i) 
    {
        time_m[i] = (int *) malloc(sizeof(int) * E);
        for(int j = 0; j < E; ++j) time_m[i][j] = 0;
    }
}
char opt[1005],addr[1005];
// this function is to shift a hex char to a decimal number
int parse_hex(char c)
{
    //printf("c = %c %d\n", c, c >= '0' && c <= '9');
    if(c >= '0' && c <= '9') return c - '0';
    else return c - 'a' + 10;
}
int clocker = 0;
// this function is to simulate storing 
void Store(int tag, int group_id, int block_bias)
{
    clocker++;
    for(int i = 0; i < E; ++i)
    {
        if(valid[group_id][i] && tag_b[group_id][i] == tag)
        {
            hits++;
            time_m[group_id][i] = clocker;
            return ;
        }
    }
    int line_choice = 0;
    misses++;
    for(int i = 1; i < E; ++i)
    {
        if(!valid[group_id][i]) {line_choice = i; break;}
        if(time_m[group_id][i] < time_m[group_id][line_choice]) line_choice = i;
    }
    if(valid[group_id][line_choice]) evictions++;
    valid[group_id][line_choice] = 1;
    clocker++;
    tag_b[group_id][line_choice] = tag;
    time_m[group_id][line_choice] = clocker;
    return ;
}
// this function is to simulate loading
void Load(int tag, int group_id, int block_bias)
{
    clocker++;
    for(int i = 0; i < E; ++i)
    {
        if(valid[group_id][i] && tag_b[group_id][i] == tag)
        {
            hits++;
            time_m[group_id][i] = clocker;
            return ;
        }
    }
    misses++;
    int line_choice = 0;
    for(int i = 1; i < E; ++i)
    {
        if(!valid[group_id][i]) {line_choice = i; break;}
        if(time_m[group_id][i] < time_m[group_id][line_choice]) line_choice = i;
    }
    if(valid[group_id][line_choice]) evictions++;
    valid[group_id][line_choice] = 1;
    clocker++;
    tag_b[group_id][line_choice] = tag;
    time_m[group_id][line_choice] = clocker;
    return ;
}
// find the maximum element between a and b
int max(int a, int b){return a < b ? b : a;}
int main(int argc, char *argv[])
{
    parse_command_list(argc, argv);
    int counter = 0;
    while(fscanf(file, "%s %s", opt, addr) != EOF)
    {
        int addr_len = strlen(addr);
        int size = 0, p = 0;
        counter++;
        while(addr[p] != ',') p++;
        for(int i = p + 1; i < addr_len; ++i) size = size * 10 + addr[i] - '0';
        int tag = 0, group_id = 0, block_bias = 0;
        //fprintf(stderr, "p = %d\n", p);
        //fprintf(stderr, "b = %d\n", b);
        //fprintf(stderr, "s = %d\n", s);
        //fprintf(stderr, "addr = %s\n", addr);
        unsigned long long binary_str = 0;
        for(int i = 0; i < p; ++i) 
            binary_str = binary_str * 16 + parse_hex(addr[i]);
        for(int i = 0; i < b; ++i) 
        {
            block_bias = block_bias << 1 | (binary_str & 1);
            binary_str >>= 1;
        }
        for(int i = 0; i < s; ++i) 
        {
            group_id = group_id << 1 | (binary_str & 1);
            binary_str >>= 1;
        }
        tag = binary_str;
        //fprintf(stderr,"tag = %d, group_id = %d, block_bias = %d\n",
        //tag, group_id, block_bias);
        if(opt[0] == 'I') continue;
        else if (opt[0] == 'S') Store(tag, group_id, block_bias); 
        else if (opt[0] == 'L') Load(tag, group_id, block_bias); 
        else if (opt[0] == 'M') 
        {
            Store(tag, group_id, block_bias);
            Load(tag, group_id, block_bias); 
        }
        //fprintf(stderr, "The %d-th instruction, miss = %d, hit = %d,
        //eviction = %d\n", counter, misses, hits, evictions);
    }
    printSummary(hits, misses, evictions);
    return 0;
}