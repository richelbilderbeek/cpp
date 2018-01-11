
 

 

 

 

 

([C++](Cpp.md)) [new](CppNew.md)
==================================

 

[C++](Cpp.md) [keyword](CppKeyword.md) to dynamically allocate
[memory](CppMemory.md) and [returning](CppReturn.md) a
[pointer](CppPointer.md) to this [memory](CppMemory.md) location. If
the allocation of [memory](CppMemory.md) fails,
[std::bad\_alloc](CppStdBad_alloc.md) is [thrown](CppThrow.md) and a
[pointer](CppPointer.md) to [null](CppNull.md) is
[returned](CppReturn.md).

 

When the [pointer](CppPointer.md) is no longer needed,
[delete](CppDelete.md) must be called.

 

 

 

 

 

Examples
--------

 

-   [new example 1: naked new and delete](CppNewExample1.md)
    (note \[4,5\])
-   [new example 2: new and a smart pointer](CppNewExample2.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Avoid 'naked' [new](CppNew.md) and [delete](CppDelete.md) \[4,5\]
-   Prefer the use of [smart pointers](CppSmartPointer.md) over the use
    of plain [pointers](CppPointer.md) \[1-3\].
-   Use [smart pointers](CppSmartPointer.md) to avoid forgetting to
    [delete](CppDelete.md) objects created using [new](CppNew.md)
    \[6\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 17: 'Store [new](CppNew.md)ed objects in
    [smart pointer](CppSmartPointer.md)s in standalone statements'
3.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 3: 'Avoid 'naked' new and delete'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[4\] Avoid "naked new" and "naked delete"'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[1\] Use unique\_ptr or shared\_ptr to avoid
    forgetting to delete objects created using new'

 

 

 

 

 

 

