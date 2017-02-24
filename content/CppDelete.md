



 

 

 

 

 

([C++](Cpp.md)) [delete](CppDelete.md)
========================================

 

[delete](CppDelete.md) is a [keyword](CppKeyword.md) to release
dynamically allocated memory (allocated by the [keyword](CppKeyword.md)
[new](CppNew.md)).

 

 

 

 

 

Examples
--------

 

-   [delete example 1: basic](CppDeleteExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Avoid 'naked' [new](CppNew.md) and [delete](CppDelete.md) \[2,3\]
-   Use [smart pointers](CppSmartPointer.md) to avoid forgetting to
    [delete](CppDelete.md) objects created using [new](CppNew.md)
    \[1,4\]

 

Be aware that it is valid to [delete a
pointer-to-const](CppDeletePointerToConst.md).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    13: 'Ensure resources are owned by objects. Use explicit RAII and
    smart pointers.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 3: 'Avoid 'naked' new and delete'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[4\] Avoid "naked new" and "naked delete"'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[1\] Use unique\_ptr or shared\_ptr to avoid
    forgetting to delete objects created using new'

 

 

 

 

 





 



