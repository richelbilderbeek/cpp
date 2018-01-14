# ([C++](Cpp.md)) [nullptr](CppNullptr.md)

[nullptr](CppNullptr.md) is a [C++11](Cpp11.md) [keyword](CppKeyword.md) to indicate an
unitialized [pointer](CppPointer.md).

```c++
#include <cassert>

int main()
{
  //Create a new p
  int * p = new int(3);
  assert(*p == 3);

  //Get rid of the current p
  delete p;
  p = nullptr;

  //Create a new p
  p = new int(4);
  assert(*p == 4);
}
```

## [Advice](CppAdvice.md)

 * Prefer [nullptr](CppNullptr.md) to NULL and 0 [2,3]

## [References](CppReferences.md)

 * [1] [GCC page about C++0x support](http://gcc.gnu.org/projects/cxx0x.html)
 * [2] [Scott Meyers](CppScottMeyers.md). [C++ And Beyond 2012 session: 'Initial thoughts on Effective C++11'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11). 2012. 'Prefer nullptr to NULL and 0'
 * [3] [Jason Turner, cppbestpractices: Use nullptr](https://github.com/lefticus/cppbestpractices/blob/master/03-Style.md#use-nullptr)
