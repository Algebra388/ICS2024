#include<stdio.h>
int argcs[40];
int main()
{
    int s = 32;
    for(int i = 0; i < s - 1; ++i)scanf("%d", &argcs[i]);
    puts("size_t find_size(int x)");
    puts("{");
    for(int i = 0; i < s - 1; ++i)printf("\tif(x == %d) return %d;\n", i, argcs[i]);
    puts("\treturn -1;");
    puts("}");

    puts("size_t get_number(int x)");
    puts("{");
    for(int i = 0; i < s - 1; ++i)printf("\tif(x <= %d) return %d;\n", argcs[i], i);
    printf("\treturn %d;\n", s - 1);
    puts("}");

    return 0;
}