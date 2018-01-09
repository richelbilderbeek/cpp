# ([C++](Cpp.md)) [Hello NAG using C](CppHelloNagC.md)

[Hello NAG using C](CppHelloNagC.md) is a [Hello World](CppHelloWorld.md) 
program to test the [NAG](CppNag.md) [library](CppLibrary.md).

```c++
#include <math.h>
#include <nag.h>
#include <nag_stdlib.h>

int main(void)
{
  char * s = 0;
  s = NAG_ALLOC(11,char);
  if (!s)
  {
    printf("Cannot allocate memory for s");
    return 1;
  }
  sprintf(s, "Hello NAG");
  puts(s);
  NAG_FREE(s);
  return 0;
}
```
