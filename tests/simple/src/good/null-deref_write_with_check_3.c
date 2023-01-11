#include <stdio.h>

int main() {
  int *ptr = NULL;

  if (ptr == NULL) {
    return -1;
  }
  *ptr = 0xdeadbeef;
  return 0;
}
