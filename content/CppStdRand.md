
 

 

 

 

 

([C++](Cpp.md)) [std::rand](CppStdRand.md)
============================================

 

[std::rand](CppStdRand.md) draws a random positive
[integer](CppInt.md) from zero to [RAND\_MAX](CppRAND_MAX.md).
[RAND\_MAX](CppRAND_MAX.md) is a [\#define](CppDefine.md)d in
[cstdlib.h](CppCstdlibH.md).

 

[std::rand](CppStdRand.md) is [defined](CppDefinition.md) in the
[header file](CppHeaderFile.md) [cstdlib.h](CppCstdlibH.md).

 

[std::\_lrand](Cpp_lrand.md) is like [std::rand](CppStdRand.md),
except it [return](CppReturn.md)s random numbers in a larger range.
Check out the [Boost C++ library](CppBoost.md) for other random number
generators.

 

 

 

 

 

Examples
--------

 

-   [std::rand example 1: drawing 10 random
    numbers](CppStdRandExample1.md)
-   [std::rand example 2: std::rand draws same numbers after same
    seed](CppStdRandExample1.md)
-   [GetRandomUniform](CppGetRandomUniform.md): get a broken random
    number from zero to one
-   [GetRandomNormal](CppGetRandomNormal.md): Get a random number from
    a normal distribution

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer a random number class for a particular distribution over
    direct use of [std::rand](CppStdRand.md) \[1\]
-   Avoid using [std::rand](CppStdRand.md) \[2\]
-   Not all systems deliver a good [std::rand](CppStdRand.md) \[3\]

 

 

 

 

 

Note when using multithreading
------------------------------

 

As [std::srand](CppSrand.md) and [std::rand](CppStdRand.md) use a
[global](CppGlobal.md)/[static](CppStatic.md)
[variable](CppVariable.md) and therefore is not suitable for
multithreading. The [Boost C++ library](CppBoost.md) has other random
number generators that do support multithreading.

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::rand](http://www.cplusplus.com/reference/clibrary/cstdlib/rand)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. 40.8\[15\]:
    'Prefer a random number class for a particular distribution over
    direct use of rand()'
2.  [Stephan T. Lavavej](CppStephanLavavej.md). 'rand()
    Considered Harmful'. 2013. [GoingNative
    2013](http://channel9.msdn.com/Events/GoingNative/2013/rand-Considered-Harmful)
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. 40.7.4:
    'Producing a random number generator isn't easy, and unfortunately
    not all systems deliver a good rand()'

 

 

 

 

 

 

