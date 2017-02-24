



 

 

 

 

 

([C++](Cpp.md)) ![C++11](PicCpp11.png) [std::unique\_ptr](CppStdUnique_ptr.md)
================================================================================

 

[std::unique\_ptr](CppStdUnique_ptr.md) is an [C++11](Cpp11.md)
[STL](CppStl.md) uncopyable [smart pointer](CppSmartPointer.md).

 

[std::unique\_ptr](CppStdUnique_ptr.md) is similar to
[boost::scoped\_ptr](Cppscoped_ptr.md).

 

[std::unique\_ptr](CppStdUnique_ptr.md) guarantees that its value is
complete when destroyed \[1\].

 

 

 

 

[Example](CppExample.md)
-------------------------

 

-   [std::unique\_ptr example 1: basics](CppStdUnique_ptrExample1.md)
-   [std::unique\_ptr example 2: custom
    deleter](CppStdUnique_ptrExample2.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [std::unique\_ptr](CppStdUnique_ptr.md) to refer to
    [objects](CppObject.md) of [polymorphic
    type](CppPolymorphicType.md) \[2\]
-   Prefer [std::unique\_ptr](CppStdUnique_ptr.md) over
    [std::shared\_ptr](CppStdShared_ptr.md) \[3\]

 

 

 

 

 

Comparison of [std::unique\_ptr](CppStdUnique_ptr.md) and [boost::scoped\_ptr](Cppscoped_ptr.md)
--------------------------------------------------------------------------------------------------

 

-   [boost::scoped\_ptr](CppScoped_ptr.md) can be used from every
    [C++](Cpp.md) [standard](CppStandard.md),
    [std::unique\_ptr](CppStdUnique_ptr.md) from [C++11](Cpp11.md)
-   [std::unique\_ptr](CppStdUnique_ptr.md) is part of the official
    [C++11](Cpp11.md) [standard](CppStandard.md)
-   [std::unique\_ptr](CppStdUnique_ptr.md) has a 'release' [member
    function](CppMemberFunction.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Working Draft, Standard for Programming Language C++.
    N3337. 2012-01-16. Paragraph 20.7.1.2.2: 'unique\_ptr destructor
    \[unique.ptr.single.dtor\]', page 518: '1 Requires: The
    expression get\_deleter()(get()) shall be well formed, shall have
    well-defined behavior, and shall not throw exceptions. \[Note: The
    use of default\_delete requires T to be a complete type. —end
    note\]'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.5, page 131: 'Use unique\_ptr
    to refer to objects of polymorphic type'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.8, page 131: 'Prefer
    unique\_ptr over shared\_ptr'

 

 

 

 

 





 



