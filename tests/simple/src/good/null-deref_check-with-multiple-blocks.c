#include <stdio.h>

int main() {
  int *ptr = NULL;
  int i = 1;
  int b = 5;

  if (ptr == NULL) {
    return 1;
  }

  if (i != 0) {
    b++;
  }
  if (b > 5) {
    i = 0;
  }

  if (i == 0) {
    *ptr = 0xdeadbeef;
  }
  return 0;
}
