



 

 

 

 

 

([C++](Cpp.htm)) [STL](CppStl.htm)
==================================

 

The [STL](CppStl.htm) (an abbreviation of 'Standard Template Library')
is the standard C++ [library](CppLibrary.htm) consisting of about twenty
[header files](CppHeaderFile.htm). For a list of all [header
files](CppHeaderFile.htm), [go to page about header
files](CppHeaderFile.htm).

 

The [STL](CppStl.htm) is a collection of [data types](CppDataType.htm),
[functions](CppFunction.htm), [algorithms](CppAlgorithm.htm) and more as
desctibed in the C++ Standard. To use a certain [data
type](CppDataType.htm), [function](CppFunction.htm),
[algorithm](CppAlgorithm.htm) or other, the right [header
file](CppHeaderFile.htm) must be [\#included](CppInclude.htm).

 

Although the working of all [STL](CppStl.htm) elements is described in
the C++ Standard, there are multiple
[implementations](CppDefinition.htm) and thus multiple
[STL](CppStl.htm)s.

 

The [STL](CppStl.htm) is general-purpose platform-independent
[library](CppLibrary.htm). For a list of other
[libraries](CppLibrary.htm), [go to the page about
libraries](CppLibrary.htm).

 

Some [STL](CppStl.htm) elements of the [STL](CppStl.htm)'s next version
can already be found in the [Boost](CppBoost.htm)
[library](CppLibrary.htm).

 

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Familiarize yourself with the [STL](CppStl.htm) \[1,3\] and the
    [STL](CppStl.htm)-related web sites \[2\]
-   Prefer the [STL](CppStl.htm) to other [libraries](CppLibrary.htm)
    and to handcrafted code \[4,13\]
-   Use [STL](CppStl.htm) facilities to maintain portability \[5,14\]
-   Use [STL](CppStl.htm) facilities to minimize maintenance costs \[6\]
-   Using [STL](CppStl.htm) functions and classes shortens program
    development time \[13\]
-   Use [STL](CppStl.htm) facilities as a base for more extensive and
    more specialized libraries \[7\]
-   Use [STL](CppStl.htm) facilities as a model for flexible, widely
    usable software \[8\]
-   The [STL](CppStl.htm) facilities are defined in namespace std and
    found in standard-library headers \[9\]
-   A C standard-library header X.h is presented as a C++
    standard-library header in &lt;cX&gt; \[10\]
-   Do no try to use a [STL](CppStl.htm) facility without \#including
    its header \[11\]
-   To use a range-for on a built-in array, \#include&lt;iterator&gt;
    \[12\]

 

 

 

 

 

External links
--------------

 

(suggested list from \[2\])

 

-   [SGI](http://www.sgi.com/tech/stl)
-   [STLport](http://www.stlport.org/)
-   [Boost](http://www.boost.org/)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard
    library, including TR1
2.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 50: 'Familiarize yourself with STL-related
    web sites'.
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 32, 1.5
    'Advice', item 12: 'Use libraries, especially the standard library,
    rather than trying to build everything from scratch'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 10.6.
    Advice. page 271: '\[1\] Prefer the standard library to other
    libraries and to "handcrafted code"'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[1\] Use standard-library facilities to maintain
    portability'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[2\] Use standard-library facilities to minimize
    maintenance costs'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[3\] Use standard-library facilities as a base
    for more extensive and more specialized libraries'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[4\] Use standard-library facilities as a model
    for flexible, widely usable software'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[5\] The standard-library facilities are defined
    in namespace std and found in standard-library headers'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[6\] A C standard-library header X.h is
    presented as a C++ standard-library header in &lt;cX&gt;'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[7\] Do no try to use a standard-library
    facility without \#including its header'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 883: '\[8\] To use a range-for on a built-in array,
    \#include&lt;iterator&gt;'
13. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 1.2, Performance Tip 1.1.
    page 3: 'Using C++ Standard Library functions and classes instead of
    writing your own versions van improve program performance, because
    they're written carefully to perform efficiently. This technique
    also shortens program development time.'
14. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 1.2, Portability Tip 1.1.
    page 3: 'Using C++ Standard Library functions and classes instead of
    writing your own improves program portability, because they're
    included in every C++ implementation'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
