



 

 

 

 

 

([C++](Cpp.htm)) [member function](CppMemberFunction.htm)
=========================================================

 

A [member function](CppMemberFunction.htm) is a
[function](CppFunction.htm) working on a [class](CppClass.htm).

 

There are multiple types of member functions:

-   [const member functions](CppConstMemberFunction.htm): these do not
    change the (non-[mutable](CppMutable.htm)) member variables
-   [static member functions](CppStaticMemberFunction.htm): these do not
    have access to an object

 

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [member function example 1: Hello
    World](CppMemberFunctionExample1.htm)
-   [member function example 2: function pointer to member
    function](CppMemberFunctionExample2.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Follow a standard [member function
    design](CppMemberFunctionDesign.htm). Note: many points of
    [advice](CppAdvice.htm)!
-   Calling a [member function](CppMemberFunction.htm) a 'method' is
    wrong \[1\]
-   Always try to localize the effects of change to a
    [class](CppClass.htm)'s [data members](CppDataMember.htm) by
    accessing and manipulating the [data members](CppDataMember.htm)
    through their corresponding get and set
    [functions](CppMemberFunction.htm) \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5. Gotcha
    \#9: 'Wrong: method, right: member function'
2.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.4, Good Programming
    Practice 3.1. page 50: 'Always try to localize the effects of change
    to a class's data members by accessing and manipulating the data
    members through their corresponding get and set functions'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
