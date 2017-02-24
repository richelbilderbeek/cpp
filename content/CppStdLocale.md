



 

 

 

 

 

([C++](Cpp.md)) [std::locale](CppStdLocale.md)
================================================

 

A [std::locale](CppStdLocale.md) is an [STL](CppStl.md) object that
represents a set of cultural preferences \[1\].

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer using [std::locale](CppStdLocale.md)s to writing ad hoc code
    for culture-sensitive I/O \[2\]
-   Use [std::locale](CppStdLocale.md)s to meet external (non-C++)
    standards \[3\]
-   Think of [std::locale](CppStdLocale.md) as a container of
    [std::facet](CppStdFacet.md)s \[4\]
-   Avoid embedding [std::locale](CppStdLocale.md) name strings in
    program text \[5\]
-   Keep changes of [std::locale](CppStdLocale.md) to a few places in a
    program \[6\]
-   Prefer [std::locale](CppStdLocale.md)-sensitive string comparisons
    and sorts \[7\]
-   Let [std::locale](CppStdLocale.md) handle the lifetime of
    [std::facet](CppStdFacet.md) \[8\]
-   When writing [std::locale](CppStdLocale.md)-sensitive I/O
    functions, remember to handle exceptions from
    user-supplied (overriding) functions \[9\]
-   Use simple user-defined values to hold values that require
    [std::locale](CppStdLocale.md)-sensitive I/O (rather than casting
    to and from values of built-in types) \[10\]
-   Prefer the character classification functions in which the
    [std::locale](CppStdLocale.md) is explicit \[11\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 39.1,
    page 1109: 'A locale is an object that represents a set of cultural
    preferences, such as how strings are compared, the way numbers
    appear as human-readable output, and the way characters are
    represented in external storage.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.3, page 1157: 'Prefer using locales to writing ad hoc code for
    culture-sensitive I/O'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.4, page 1157: 'Use locales to meet external (non-C++)
    standards'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.5, page 1157: 'Think of locale as a container of facets'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.6, page 1157: 'Avoid embedding locale name strings in program
    text'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.7, page 1157: 'Keep changes of locale to a few places in a
    program'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.9, page 1157: 'Prefer locale-sensitive string comparisons and
    sorts'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.11, page 1157: 'Let locale handle the lifetime of facets'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.13, page 1157: 'When writing locale-sensitive I/O functions,
    remember to handle exceptions from user-supplied (overriding)
    functions'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.16, page 1157: 'Use simple user-defined values to hold values
    that require locale-sensitive I/O (rather than casting to and from
    values of built-in types)'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter
    39.6.18, page 1157: 'Prefer the character classification functions
    in which the locale is explicit'

 

 

 

 

 





 



