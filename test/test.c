#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define BUFFSIZE 8

void reverse(char *x, int begin, int end)
{
   char c;

   if (begin >= end)
      return;

   c          = *(x+begin);
   *(x+begin) = *(x+end);
   *(x+end)   = c;

   reverse(x, ++begin, --end);
}

char* reverseName(char* name) {
    char* retname;
    if(strcmp("joschua", name) == 0) {
        return name;
    }
    int a = 5;
    for(int i = 0; i < 20; i++) {
        a += 1;
    }
    int *b;
    b = &a;
    int c;
    c = *b;
    int *d;
    d = b;

    printf("addr of a %p\n", a);
    printf("addr of b %p\n", b);
    printf("addr of c %p\n", c);
    printf("addr of d %p\n", d);
    printf("val of a %d\n", a);
    printf("val of b %d\n", b);
    printf("val of c %d\n", c);
    printf("val of d %d\n", d);

    reverse(name, 0, strlen(name)-1);
    retname = name;
    return name;
}

int main() {
    char name[BUFFSIZE];
    char* input;
    char* revname;
    char** inputpointer;

	input = calloc(BUFFSIZE+1, sizeof(char));

    input = realloc(input, BUFFSIZE*sizeof(char));

    inputpointer = &input;

	printf("Enter your name:\n");
    //of by one
	fgets(*inputpointer, sizeof(char)*(BUFFSIZE+1), stdin);

    strncpy(name, input, strlen(input)-1+2);

	revname = reverseName(name);

	printf("Hello, %s. Welcome!", revname);
	return 0;
}
