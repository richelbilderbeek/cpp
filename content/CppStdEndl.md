# ([C++](Cpp.md)) [std::endl](CppEndl.md)

[std::endl](CppEndl.md) is an output [stream](CppStream.md) modifier
to go to the next line and flush the [stream](CppStream.md)'s buffer.

```
#include <iostream>  

int main() 
{   
  //Go to next line and flush the std::cout buffer   
  std::cout << std::endl; 
}
```

The code above is equivalent to the code below [2]:

```
#include <iostream>  

int main() 
{   
  //Go to next line   
  std::cout << '\n';   
  //Flush the std::cout buffer   
  std::cout.flush(); 
}
```

Avoid [std::endl](CppEndl.md) [1], as one does not need to flush the [std::cout](CppCout.md) buffer after every output [2].

## [References](CppReferences.md)

 * [1] [C++ Core Guidelines: SL.io.50: Avoid endl](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#Rio-endl)
 * [2] [Angelika Langer](CppAngelikaLanger.md), [Klaus Kreft](CppKlausKreft.md). Standard C++ IOStreams and Locales. 1999. ISBN:0-321-58558-5. Chapter 1.2.4, section 'Manipulators', page 23
