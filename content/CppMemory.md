

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [memory](CppMemory.htm)
========================================

 

A computer's [memory](CppMemory.htm) is the amount of fast non-permanent
data ([RAM](CppRam.htm)) that is, among others, used for calculations.

 

[C++](Cpp.htm) uses the following major distinct [memory](CppMemory.htm)
areas \[1\]:

 

-   Const data: [const](CppConst.htm) data known at [compile
    time](CppCompileTime.htm)
-   Stack: automatic variables that live in their [scope](CppScope.htm)
-   Free store: dynamic memory area allocated/freed by
    [new](CppNew.htm)/[delete](CppDelete.htm). Prefer using the free
    store \[2\]
-   Heap: dynamic memory area allocated/freed by
    [malloc](CppMalloc.htm)/[free](CppFree.htm). Avoid using the heap
    \[3\]
-   Global/static: [global](CppGlobal.htm)/[static](CppStatic.htm)
    [variables](CppVariable.htm) that are initialized at program startup

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 35: Memory Management - Part 1: Table 1
2.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 35: 'Prefer using the free store
    (new/delete)'
3.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++.
    ISBN: 0-201-61562-2. Item 35: 'Avoid using the heap (malloc/free)'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
