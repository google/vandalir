#include <stdio.h>

int main() {
  int *ptr = NULL;

  if (!ptr) {
    *ptr = 0xdeadbeef;
  }
  return 0;
}
