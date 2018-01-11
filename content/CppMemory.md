
 

 

 

 

 

([C++](Cpp.md)) [memory](CppMemory.md)
========================================

 

A computer's [memory](CppMemory.md) is the amount of fast non-permanent
data ([RAM](CppRam.md)) that is, among others, used for calculations.

 

[C++](Cpp.md) uses the following major distinct [memory](CppMemory.md)
areas \[1\]:

 

-   Const data: [const](CppConst.md) data known at [compile
    time](CppCompileTime.md)
-   Stack: automatic variables that live in their [scope](CppScope.md)
-   Free store: dynamic memory area allocated/freed by
    [new](CppNew.md)/[delete](CppDelete.md). Prefer using the free
    store \[2\]
-   Heap: dynamic memory area allocated/freed by
    [malloc](CppStdMalloc.md)/[free](CppStdFree.md). Avoid using the heap
    \[3\]
-   Global/static: [global](CppGlobal.md)/[static](CppStatic.md)
    [variables](CppVariable.md) that are initialized at program startup

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 35: Memory Management - Part 1: Table 1
2.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 35: 'Prefer using the free store
    (new/delete)'
3.  [Herb Sutter](CppHerbSutter.md). Exceptional C++.
    ISBN: 0-201-61562-2. Item 35: 'Avoid using the heap (malloc/free)'

 

 

 

 

 

 

