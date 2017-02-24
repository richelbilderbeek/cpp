
 

 

 

 

 

([C++](Cpp.md)) [GMTL](CppGmtl.md)
====================================

 

'[GMTL](CppGmtl.md) stands for (G)eneric (M)ath (T)emplate (L)ibrary.
It is a math library designed to be high-performance, extensible, and
generic. \[1\]'.

 

Personally, I like this library:

-   Pro: use of templates
-   Pro: elegant interface, but ...
-   Con: please don't overload operator+= : does it append elements to a
    vector, or does it add these values to the current elements' values?
-   Con: no tutorial, the faqexample is nonsensical
-   Con: limited functionality
-   Con: Use of a vector base class sounds unnecessary
-   Con: Many duplications of features from other libraries, for example
    the math functions, the geometry functions and static assert

 

Because I was looking for a library to do a linear fit with, so I did
not check out much if this library's functionality.

 

 

 

 

Examples
--------

 

1.  [GMTL example 1: obtain the weighted vector between two
    others](CppGmtlExample1)

 

 

 

 

 

[References](CppRefererences.md)
---------------------------------

 

1.  [GMTL homepage](http://ggt.sourceforge.net/html/main.html)

 

 

 

 

 

 

