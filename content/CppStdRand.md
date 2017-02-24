



 

 

 

 

 

([C++](Cpp.htm)) [std::rand](CppStdRand.htm)
============================================

 

[std::rand](CppStdRand.htm) draws a random positive
[integer](CppInt.htm) from zero to [RAND\_MAX](CppRAND_MAX.htm).
[RAND\_MAX](CppRAND_MAX.htm) is a [\#define](CppDefine.htm)d in
[cstdlib.h](CppCstdlibH.htm).

 

[std::rand](CppStdRand.htm) is [defined](CppDefinition.htm) in the
[header file](CppHeaderFile.htm) [cstdlib.h](CppCstdlibH.htm).

 

[std::\_lrand](Cpp_lrand.htm) is like [std::rand](CppStdRand.htm),
except it [return](CppReturn.htm)s random numbers in a larger range.
Check out the [Boost C++ library](CppBoost.htm) for other random number
generators.

 

 

 

 

 

Examples
--------

 

-   [std::rand example 1: drawing 10 random
    numbers](CppStdRandExample1.htm)
-   [std::rand example 2: std::rand draws same numbers after same
    seed](CppStdRandExample1.htm)
-   [GetRandomUniform](CppGetRandomUniform.htm): get a broken random
    number from zero to one
-   [GetRandomNormal](CppGetRandomNormal.htm): Get a random number from
    a normal distribution

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer a random number class for a particular distribution over
    direct use of [std::rand](CppStdRand.htm) \[1\]
-   Avoid using [std::rand](CppStdRand.htm) \[2\]
-   Not all systems deliver a good [std::rand](CppStdRand.htm) \[3\]

 

 

 

 

 

Note when using multithreading
------------------------------

 

As [std::srand](CppSrand.htm) and [std::rand](CppStdRand.htm) use a
[global](CppGlobal.htm)/[static](CppStatic.htm)
[variable](CppVariable.htm) and therefore is not suitable for
multithreading. The [Boost C++ library](CppBoost.htm) has other random
number generators that do support multithreading.

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::rand](http://www.cplusplus.com/reference/clibrary/cstdlib/rand)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. 40.8\[15\]:
    'Prefer a random number class for a particular distribution over
    direct use of rand()'
2.  [Stephan T. Lavavej](CppStephanLavavej.htm). 'rand()
    Considered Harmful'. 2013. [GoingNative
    2013](http://channel9.msdn.com/Events/GoingNative/2013/rand-Considered-Harmful)
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. 40.7.4:
    'Producing a random number generator isn't easy, and unfortunately
    not all systems deliver a good rand()'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
