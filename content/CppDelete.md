



 

 

 

 

 

([C++](Cpp.htm)) [delete](CppDelete.htm)
========================================

 

[delete](CppDelete.htm) is a [keyword](CppKeyword.htm) to release
dynamically allocated memory (allocated by the [keyword](CppKeyword.htm)
[new](CppNew.htm)).

 

 

 

 

 

Examples
--------

 

-   [delete example 1: basic](CppDeleteExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Avoid 'naked' [new](CppNew.htm) and [delete](CppDelete.htm) \[2,3\]
-   Use [smart pointers](CppSmartPointer.htm) to avoid forgetting to
    [delete](CppDelete.htm) objects created using [new](CppNew.htm)
    \[1,4\]

 

Be aware that it is valid to [delete a
pointer-to-const](CppDeletePointerToConst.htm).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    13: 'Ensure resources are owned by objects. Use explicit RAII and
    smart pointers.'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 3: 'Avoid 'naked' new and delete'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[4\] Avoid "naked new" and "naked delete"'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[1\] Use unique\_ptr or shared\_ptr to avoid
    forgetting to delete objects created using new'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
