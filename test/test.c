#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define BUFFSIZE 8

char* getInput(char* name) {
    fgets(name, sizeof(char)*BUFFSIZE+1, stdin);
    return name;
}

struct name {
  char vorname[20];
  char nachname[30];
  int age;
};

struct munger_struct {
  int f1;
  int f2;
  struct name someone[3];
};
/*
void munge(struct munger_struct *P) {
  P[0].f1 = P[1].f1 + P[2].f2;
}
*/
void arrayTest() {


    //struct munger_struct Array[3];
    //munge(Array);

    //int numberOfnames = 10;
    //int twodim[2][4][5];
    //twodim[1][3][0] = 1;
    struct name person[3][3];
    strcpy(person[0][0].vorname, "Joschua");
    int x = 5;
    if (x>4) {
      x = 4;
    }
    //struct name people[4];
    //strcpy(people[3].vorname, "Joschua");
    //strcpy(people[2].nachname, "Schilling");
    /*
    people[2].someVal[0] = 42;
    people[2].someVal[1] = 1337;
    */
    //printf("%s\n", people[3].vorname);
    

    /*
    char str[20] = "teststring";
    str[2] = 'x';
    int index = 3;
    str[index] = 'y';
    */
}

int main(int argc, char *argv[]) {
    arrayTest();
    char name[BUFFSIZE-1];
    char* input;
    char* temp;
    char* modname;
    char** inputpointer;
    char someInput[30];

  if(argv[1] != NULL) {
    strncpy(someInput, argv[1], sizeof(someInput));
    printf("argument1:%s\n", someInput);
  }

	input = calloc(BUFFSIZE-1, sizeof(char));

    //without the following line ==> only overflow in strncpy detected
    input = realloc(input, (BUFFSIZE-1)*sizeof(char));

    inputpointer = &input;

	printf("Enter your name:\n");

    //off by one

    temp = getInput(input);

    strncpy(name, *inputpointer, BUFFSIZE);

	printf("Hello %s", name);
	return 0;
}
