# ([C++](Cpp.md)) [iostream.h](CppIostreamH.md)

[iostream.h](CppIostreamH.md) is the [header file](CppHeaderFile.md)
containg the [definitions](CppDefinition.md) from input and output
[streams](CppStream.md) like [std::cout](CppCout.md) and
[std::cin](CppCin.md).

```c++
#include <iostream>

int main() 
{
  std::cout << "Hello World\n"; 
}
```

## [Advice](CppAdvice.md)

 * Forgetting to [include](CppInclude.md) the &lt;[iostream](CppIostreamH.md)&gt; [header](CppHeaderFile.md) in a program that inputs data from the keyboard or outputs data to the screen causes the [compiler](CppCompiler.md) to issue an [error](CppCompileError.md) message [1], for example ['cout' is not a member of 'std'](CppCompileErrorCoutIsNotAmemberOfStd.md)

## [References](CppReference.md)

 * [1] Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition). 2014. ISBN: 978-0-13-343985-4. Chapter 2.2, Common Programming Error 2.1. page 21: 'Forgetting to include the &lt;iostream&gt; header in a program that inputs data from the keyboard or outputs data to the screen causes the compiler to issue an error message'

 

 

 

 

 

 

