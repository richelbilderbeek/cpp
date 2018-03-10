# ([C++](Cpp.md)) [STL](CppStl.md)

The [STL](CppStl.md) (an abbreviation of 'Standard Template Library')
is the standard C++ [library](CppLibrary.md) consisting of about twenty
[header files](CppHeaderFile.md). 

The [STL](CppStl.md) is a collection of [data types](CppDataType.md),
[functions](CppFunction.md), [algorithms](CppAlgorithm.md) and more as
described in the C++ Standard. To use a certain [data
type](CppDataType.md), [function](CppFunction.md),
[algorithm](CppAlgorithm.md) or other, the right [header
file](CppHeaderFile.md) must be [#included](CppInclude.md).

There is no such thing as 'the STL' as a collection of code. 
Although the requirements of all [STL](CppStl.md) elements is described in the C++ Standard, 
there exist multiple implementations of those requirements.

## [Example](CppExample.md): [Hello World](CppHelloWorld.md)

This [Hello World](CppHelloWorld.md) [includes](CppInclude.md) the [STL](CppStl.md) [header file](CppHeaderFile.md)
[iostream](CppIostreamH.md), so that the [STL](CppStl.md) [output stream](CppStdOstream.md) [std::cout](CppStdCout.md) can be used:

```c++
#include <iostream>

int main() 
{
  std::cout << "Hello World\n"; 
}
```

## [Advice](CppAdvice.md)

 * Familiarize yourself with the [STL](CppStl.md) [1,3] and the [STL](CppStl.md)-related web sites [2]
 * Prefer the [STL](CppStl.md) to other [libraries](CppLibrary.md) and to handcrafted code [4,12,13]
 * Use [STL](CppStl.md) facilities to maintain portability [5,14]
 * Use [STL](CppStl.md) facilities to minimize maintenance costs [6]
 * Using [STL](CppStl.md) functions and classes shortens program development time [13]
 * Use [STL](CppStl.md) facilities as a base for more extensive and more specialized libraries [7]
 * Use [STL](CppStl.md) facilities as a model for flexible, widely usable software [8]
 * The [STL](CppStl.md) facilities are defined in namespace std and found in standard-library headers [9]
 * Do no try to use a [STL](CppStl.md) facility without #including its header [11]

## External links

STL related website (suggested from [2]):

 * [STLport](http://www.stlport.org/)
 * [Boost](http://www.boost.org/)

 * [Stephen T Lavavej: Core C++](https://www.youtube.com/playlist?list=PL9QAu9zhcKhGEDZpDtk33mz1kRV9o1vfa)
 * [CppCast Episode 88: Microsoft's STL with Stephan T. Lavavej](https://youtu.be/U3jMpBaLc4M)

## [References](CppReferences.md)

 * [1] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard library, including TR1
 * [2] [Scott Meyers](CppScottMeyers.md). Effective STL. ISBN: 0-201-74962-9. Item 50: 'Familiarize yourself with STL-related web sites'.
 * [3] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 32, 1.5 'Advice', item 12: 'Use libraries, especially the standard library, rather than trying to build everything from scratch'
 * [4] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 10.6. Advice. page 271: '[1] Prefer the standard library to other libraries and to "handcrafted code"'
 * [5] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[1] Use standard-library facilities to maintain portability'
 * [6] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[2] Use standard-library facilities to minimize maintenance costs'
 * [7] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[3] Use standard-library facilities as a base for more extensive and more specialized libraries'
 * [8] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[4] Use standard-library facilities as a model for flexible, widely usable software'
 * [9] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[5] The standard-library facilities are defined in namespace std and found in standard-library headers'
 * [10] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[6] A C standard-library header X.h is presented as a C++ standard-library header in &lt;cX&gt;'
 * [11] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5. Advice. page 883: '[7] Do no try to use a standard-library facility without #including its header'
 * [12] [C++ Core Guidelines: SL.2: Prefer the standard library to other libraries](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#Rsl-sl)
 * [13] Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition). 2014. ISBN: 978-0-13-343985-4. Chapter 1.2, Performance Tip 1.1. page 3: 'Using C++ Standard Library functions and classes instead of writing your own versions van improve program performance, because they're written carefully to perform efficiently. This technique also shortens program development time.'
 * [14] Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition). 2014. ISBN: 978-0-13-343985-4. Chapter 1.2, Portability Tip 1.1. page 3: 'Using C++ Standard Library functions and classes instead of writing your own improves program portability, because they're included in every C++ implementation'

