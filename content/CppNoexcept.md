
 

 

 

 

 

([C++](Cpp.md)) [noexcept](CppNoexcept.md)
============================================

 

[noexcept](CppNoexcept.md) is a [keyword](CppKeyword.md) to indicate
that a [function](CppFunction.md) may not [throw](CppThrow.md) an
[exception](CppException.md). If the [function](CppFunction.md) does
[throw](CppThrow.md) an [exception](CppException.md),
[std::terminate](CppTerminate.md) is called.

 

 

 

 

 

[Example](CppExample.md)
-------------------------

 

-   [noexcept example 1: basics](CppNoexceptExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   If a [function](CppFunction.md) may not [throw](CppThrow.md),
    [declare](CppDeclaration.md) it [noexcept](CppNoexcept.md) \[1\]
-   Generated [destructors](CppDestructor.md) are implicitly
    [noexcept](CppNoexcept.md), as [destructors](CppDestructor.md)
    should not [throw](CppThrow.md) \[2\]
-   A generated copy or move operation is implicitly
    [noexcept](CppNoexcept.md) if all of the copy or move operations it
    uses on members of its class have [noexcept](CppNoexcept.md)
    [destructors](CppDestructor.md) \[3\]. Declare a move operation
    [noexcept](CppNoexcept.md), as it should not throw \[3\]
-   Reserve [noexcept](CppNoexcept.md) for [functions](CppFunction.md)
    with wide interfaces \[4\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice, page 387: '\[23\] If your function may not throw, declare it
    noexcept'
2.  [Bjarne Stroustrup's C++11
    FAQ](http://www.stroustrup.com/C++11FAQ.html#noexcept): 'A
    destructor shouldn't throw; a generated destructor is implicitly
    noexcept (independently of what code is in its body) if all of the
    members of its class have noexcept destructors.'
3.  [Bjarne Stroustrup's C++11
    FAQ](http://www.stroustrup.com/C++11FAQ.html#noexcept): 'It is
    typically a bad idea to have a move operation throw, so declare
    those noexcept whereever possible. A generated copy or move
    operation is implicitly noexcept if all of the copy or move
    operations it uses on members of its class have noexcept
    destructors.'
4.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Reserve noexcept for
    Functions with Wide Interfaces'

 

 

 

 

 

 

