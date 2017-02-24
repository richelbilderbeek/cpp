
 

 

 

 

 

([C++](Cpp.md)) [static member function](CppStaticMemberFunction.md)
======================================================================

 

A [static member function](CppStaticMemberFunction.md) is a type of
[member function](CppMemberFunction.md) that does not need a specific
object.

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Declare a [member function](CppMemberFunction.md) that does not
    modify the state of its object a [static member
    function](CppStaticMemberFunction.md) \[1\]

 

 

 

 

 

Notes to self
-------------

 

-   [Declare](CppDeclaration.md) a [member
    function](CppMemberFunction.md) that does not modify the state of
    its object a [static member function](CppStaticMemberFunction.md)
    \[1\], but only if there is no need to trigger a [unit
    test](CppUnitTest.md) for that [class](CppClass.md). As [static
    member functions](CppStaticMemberFunction.md) bypass the
    [constructor](CppConstructor.md), and I use the
    [constructor](CppConstructor.md) to start a [unit
    test](CppUnitTest.md), making a [member
    function](CppMemberFunction.md) like 'Transmogrify'
    [static](CppStatic.md), leaves it untested. A [member
    function](CppMemberFunction.md) like 'GetVersion' is fine to keep
    [static](CppStatic.md), especially if the [class](CppClass.md) has
    no [default constructor](CppDefaultConstructor.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[11\] Make a function that needs access to the
    representation of a class but needn't be called for a specific
    object a static member function'

 

 

 

 

 

 

