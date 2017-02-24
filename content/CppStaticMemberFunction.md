



 

 

 

 

 

([C++](Cpp.htm)) [static member function](CppStaticMemberFunction.htm)
======================================================================

 

A [static member function](CppStaticMemberFunction.htm) is a type of
[member function](CppMemberFunction.htm) that does not need a specific
object.

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Declare a [member function](CppMemberFunction.htm) that does not
    modify the state of its object a [static member
    function](CppStaticMemberFunction.htm) \[1\]

 

 

 

 

 

Notes to self
-------------

 

-   [Declare](CppDeclaration.htm) a [member
    function](CppMemberFunction.htm) that does not modify the state of
    its object a [static member function](CppStaticMemberFunction.htm)
    \[1\], but only if there is no need to trigger a [unit
    test](CppUnitTest.htm) for that [class](CppClass.htm). As [static
    member functions](CppStaticMemberFunction.htm) bypass the
    [constructor](CppConstructor.htm), and I use the
    [constructor](CppConstructor.htm) to start a [unit
    test](CppUnitTest.htm), making a [member
    function](CppMemberFunction.htm) like 'Transmogrify'
    [static](CppStatic.htm), leaves it untested. A [member
    function](CppMemberFunction.htm) like 'GetVersion' is fine to keep
    [static](CppStatic.htm), especially if the [class](CppClass.htm) has
    no [default constructor](CppDefaultConstructor.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[11\] Make a function that needs access to the
    representation of a class but needn't be called for a specific
    object a static member function'

 

 

 

 

 





 



