
 

 

 

 

 

([C++](Cpp.md)) [Should I learn C before learning C++?](CppLearnCbeforeCpp.md)
================================================================================

 

Both Bjarne Stroustrup and C++ FAQ LITE believe it is easier to directly
start learning C++.

 

Reasons are:

 

-   C++ is safer \[1\], e.g. it has increased type safety, which makes
    the use of Hungarian notation unnesessary
-   C++ is more expressive \[1\]. This is due to that C++ enables Object
    Oriented Programming
-   C++ reduces need to focus on low-level techniques as there are
    better libraries \[1\] (the STL). For example, using a std::vector
    saves you a lot of time managing and writing functions for arrays
-   C uses malloc instead of new, the latter being safer \[3\]
-   C uses printf instead of cout, the latter being safer \[3\]
-   C unnecessary uses type-dependent switch statements, where C++ can
    solve these using polymorphism \[3\]
-   C++ has error-code exception handling, as it supports the keywords
    try and catch \[3\]
-   C++ makes \#define macros unnecessary, using template or inline
    functions \[3\]
-   C++ can overload functions with the same name, if the compiler can
    distinguish them from the function its arguments

 

After having learned the common subset of C and C++, it is easier to
find out the trickier parts of C \[1,2\]. See [C++
keywords](CppKeyword.md) for a list of C++ keywords.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Bjarne Stroustrup. The C++ Programming Language (3rd edition). ISBN:
    0-201-88954-4, chapter 1.2: 'Learning C++'
2.  http://new-brunswick.net/workshop/c++/faq/how-to-learn-cpp.html,
    topic \[28.2\]
3.  http://www.research.att.com/\~bs/bs\_faq.html\#prerequisite

 

 

 

 

 

 

