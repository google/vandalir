#include <stdio.h>

int main() {
  int *ptr = NULL;

  if (ptr != NULL) {
    *ptr = 0xdeadbeef;
  }
  return 0;
}
