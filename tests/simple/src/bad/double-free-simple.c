#include <stdlib.h>

int main() {
  char *ptr = malloc(10);

  char *ptr1 = ptr;

  free(ptr1);
  free(ptr);
  return 0;
}
