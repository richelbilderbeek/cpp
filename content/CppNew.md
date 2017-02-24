

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [new](CppNew.htm)
==================================

 

[C++](Cpp.htm) [keyword](CppKeyword.htm) to dynamically allocate
[memory](CppMemory.htm) and [returning](CppReturn.htm) a
[pointer](CppPointer.htm) to this [memory](CppMemory.htm) location. If
the allocation of [memory](CppMemory.htm) fails,
[std::bad\_alloc](CppBad_alloc.htm) is [thrown](CppThrow.htm) and a
[pointer](CppPointer.htm) to [null](CppNull.htm) is
[returned](CppReturn.htm).

 

When the [pointer](CppPointer.htm) is no longer needed,
[delete](CppDelete.htm) must be called.

 

 

 

 

 

Examples
--------

 

-   [new example 1: naked new and delete](CppNewExample1.htm)
    (note \[4,5\])
-   [new example 2: new and a smart pointer](CppNewExample2.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Avoid 'naked' [new](CppNew.htm) and [delete](CppDelete.htm) \[4,5\]
-   Prefer the use of [smart pointers](CppSmartPointer.htm) over the use
    of plain [pointers](CppPointer.htm) \[1-3\].
-   Use [smart pointers](CppSmartPointer.htm) to avoid forgetting to
    [delete](CppDelete.htm) objects created using [new](CppNew.htm)
    \[6\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 13: 'Use objects to manage resources'.
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 17: 'Store [new](CppNew.htm)ed objects in
    [smart pointer](CppSmartPointer.htm)s in standalone statements'
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 13: 'Ensure resources are owned by objects. Use explicit
    RAII and smart pointers.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 19,
    1.3.2 'Advice', item 3: 'Avoid 'naked' new and delete'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[4\] Avoid "naked new" and "naked delete"'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[1\] Use unique\_ptr or shared\_ptr to avoid
    forgetting to delete objects created using new'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
