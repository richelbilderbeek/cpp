



 

 

 

 

 

([C++](Cpp.htm)) ![C++11](PicCpp11.png) [std::unique\_ptr](CppStdUnique_ptr.htm)
================================================================================

 

[std::unique\_ptr](CppStdUnique_ptr.htm) is an [C++11](Cpp11.htm)
[STL](CppStl.htm) uncopyable [smart pointer](CppSmartPointer.htm).

 

[std::unique\_ptr](CppStdUnique_ptr.htm) is similar to
[boost::scoped\_ptr](Cppscoped_ptr.htm).

 

[std::unique\_ptr](CppStdUnique_ptr.htm) guarantees that its value is
complete when destroyed \[1\].

 

 

 

 

[Example](CppExample.htm)
-------------------------

 

-   [std::unique\_ptr example 1: basics](CppStdUnique_ptrExample1.htm)
-   [std::unique\_ptr example 2: custom
    deleter](CppStdUnique_ptrExample2.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [std::unique\_ptr](CppStdUnique_ptr.htm) to refer to
    [objects](CppObject.htm) of [polymorphic
    type](CppPolymorphicType.htm) \[2\]
-   Prefer [std::unique\_ptr](CppStdUnique_ptr.htm) over
    [std::shared\_ptr](CppStdShared_ptr.htm) \[3\]

 

 

 

 

 

Comparison of [std::unique\_ptr](CppStdUnique_ptr.htm) and [boost::scoped\_ptr](Cppscoped_ptr.htm)
--------------------------------------------------------------------------------------------------

 

-   [boost::scoped\_ptr](CppScoped_ptr.htm) can be used from every
    [C++](Cpp.htm) [standard](CppStandard.htm),
    [std::unique\_ptr](CppStdUnique_ptr.htm) from [C++11](Cpp11.htm)
-   [std::unique\_ptr](CppStdUnique_ptr.htm) is part of the official
    [C++11](Cpp11.htm) [standard](CppStandard.htm)
-   [std::unique\_ptr](CppStdUnique_ptr.htm) has a 'release' [member
    function](CppMemberFunction.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Working Draft, Standard for Programming Language C++.
    N3337. 2012-01-16. Paragraph 20.7.1.2.2: 'unique\_ptr destructor
    \[unique.ptr.single.dtor\]', page 518: '1 Requires: The
    expression get\_deleter()(get()) shall be well formed, shall have
    well-defined behavior, and shall not throw exceptions. \[Note: The
    use of default\_delete requires T to be a complete type. —end
    note\]'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.5, page 131: 'Use unique\_ptr
    to refer to objects of polymorphic type'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.8, page 131: 'Prefer
    unique\_ptr over shared\_ptr'

 

 

 

 

 





 



