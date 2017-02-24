
 

 

 

 

 

([C++](Cpp.md)) [member function](CppMemberFunction.md)
=========================================================

 

A [member function](CppMemberFunction.md) is a
[function](CppFunction.md) working on a [class](CppClass.md).

 

There are multiple types of member functions:

-   [const member functions](CppConstMemberFunction.md): these do not
    change the (non-[mutable](CppMutable.md)) member variables
-   [static member functions](CppStaticMemberFunction.md): these do not
    have access to an object

 

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

-   [member function example 1: Hello
    World](CppMemberFunctionExample1.md)
-   [member function example 2: function pointer to member
    function](CppMemberFunctionExample2.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Follow a standard [member function
    design](CppMemberFunctionDesign.md). Note: many points of
    [advice](CppAdvice.md)!
-   Calling a [member function](CppMemberFunction.md) a 'method' is
    wrong \[1\]
-   Always try to localize the effects of change to a
    [class](CppClass.md)'s [data members](CppDataMember.md) by
    accessing and manipulating the [data members](CppDataMember.md)
    through their corresponding get and set
    [functions](CppMemberFunction.md) \[2\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha
    \#9: 'Wrong: method, right: member function'
2.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.4, Good Programming
    Practice 3.1. page 50: 'Always try to localize the effects of change
    to a class's data members by accessing and manipulating the data
    members through their corresponding get and set functions'

 

 

 

 

 

 

