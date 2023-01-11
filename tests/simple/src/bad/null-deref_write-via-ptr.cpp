#include <stdio.h>

int main() {
  int *ptr = nullptr;
  int *a;

  a = ptr;

  *a = 0xdeadbeef;
  return 0;
}
