# ([C++](Cpp.md)) [initializer-list](CppInitializerList.md)

An [initializer-list](CppInitializerList.md) is the [C++11](Cpp11.md) way to initialize using curly braces:

```c++
#include <vector>

int main()
{
  const std::vector<int> v = {1,2,3,4,5};
}
```


## [Advice](CppAdvice.md)

 * If a [class](CppClass.md) is a [container](CppContainer.md), give it an [initializer-list](CppInitializerList.md) [constructor](CppConstructor.md) [1]
 * Initialize [member variables](CppMemberVariable.md) with the member [initializer list](CppInitializerList.md) [2]

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7. Advice. page 525: '\[8\] If a class is a container, give it an initializer-list constructor'
 * [2] [Jason Turner, cppbestpractices: Initialize Member Variables with the member initializer list](https://github.com/lefticus/cppbestpractices/blob/master/03-Style.md#initialize-member-variables)

