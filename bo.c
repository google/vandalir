#include<stdio.h>
#include<string.h>


#define BUFFSIZE 8

int main() {
    char name[BUFFSIZE];
    char input[BUFFSIZE];

	printf("Enter your name:\n");
	fgets(input, strlen(input)-1+2, stdin);
	/* off by one */
	strncpy(name, input, BUFFSIZE+1);

	printf("Hello, %s. Welcome!", name);
	return 0;
}
