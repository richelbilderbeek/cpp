# ([C++](Cpp.md)) [static](CppStatic.md)

[Keyword](CppKeyword.md) enabling in-[class](CppClass.md) or
in-[function](CppFunction.md) static [variables](CppVariable.md) or
create [static member function](CppStaticMemberFunction.md).

A common use of [static](CppStatic.md) is when you want to keep track
of how many [instances](CppInstance.md) a [class](CppClass.md) has:

```c++
#include <iostream>

class instance_counter
{
  static int m_n_instances;
  
  public:
  instance_counter()
  {
    ++m_n_instances;
    std::cout << "Constructed an instance."
      << "Now there are " << m_n_instances << ".\n";
  }
  ~instance_counter()
  {
    --m_n_instances;
    std::cout << "Destructed an instance."
      << "Now there are " << m_n_instances << ".\n";
  }
};

int instance_counter::m_n_instances = 0;

int main()
{
  instance_counter one, two, three, four,five;
}
```

## [Advice](CppAdvice.md)

 * See [static member function](CppStaticMemberFunction.md)

## Notes to self

 * When in doubt if a [variable](CppVariable.md) should be [static](CppStatic.md) or not, do not make it [static](CppStatic.md): I note that I do change [variables](CppVariable.md) from [static](CppStatic.md) to non-[static](CppStatic.md), but never the other way around

## External links

 * [CppCon 2017: Nir Friedman 'What C++ developers should know about globals (and the linker)'](https://youtu.be/xVT1y0xWgww)

