
 

 

 

 

 

([C++](Cpp.md)) [Destructor](CppDestructor.md)
================================================

 

A [destructor](CppDestructor.md) is a [class](CppClass.md) element
that is called when a [class](CppClass.md) goes out of
[scope](CppScope.md). The [class](CppClass.md) element that is called
when a [class](CppClass.md) is created is called the
[constructor](CppConstructor.md).

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

-   [destructor example 1: basics](CppDestructorExample1.md)
-   [destructor example 2: detruction
    sequence](CppDestructorExample2.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Design [constructors](CppContructor.md), assignments, and the
    [destructor](CppDestructor.md) as a matched set of operations \[5\]
-   All [base classes](CppBaseClass.md) must have a
    ([public](CppPublic.md)) [virtual](CppVirtual.md)
    [destructor](CppDestructor.md) \[1,3\]
-   A non-[base class](CppBaseClass.md) should have a
    (non-[public](CppPublic.md)) non-[virtual](CppVirtual.md)
    [destructor](CppDestructor.md) \[1,3\]
-   Avoid calling [virtual](CppVirtual.md) [member
    functions](CppMemberFunction.md) in
    [constructors](CppConstructor.md) and
    [destructors](CppDestructor.md) \[2\]
-   Don't call [virtual](CppVirtual.md) [member
    functions](CppMemberFunction.md) in
    [constructors](CppConstructor.md) and
    [destructors](CppDestructor.md) \[9\]
-   Never let an [exception](CppException.md) escape from a
    [destructor](CppDestructor.md) \[4\]
-   If a [constructor](CppConstructor.md) acquires a resource, its
    class needs a [destructor](CppDestructor.md) to release the
    resource \[6\]
-   If a [class](CppClass.md) has a [virtual](CppVirtual.md) [member
    functions](CppMemberFunction.md), it needs a
    [virtual](CppVirtual.md) [destructor](CppDestructor.md) \[7,8\]
-   Generated [destructors](CppDestructor.md) are implicitly
    [noexcept](CppNoexcept.md) \[10,11\]. Declaring a
    [destructors](CppDestructor.md) [noexcept](CppNoexcept.md)
    explicitly is harmless and unconventional \[11\].

 

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 50:
    'Make base class destructors public and virtual, or protected
    and nonvirtual'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 49: 'Avoid calling virtual functions in constructors and
    destructors'
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 78: 'All base classes with a virtual
    function shall define a virtual destructor.'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[30\] Never let an exception escape from a
    destructor'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[1\] Design constructors, assignments, and the
    destructor as a matched set of operations'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[3\] If a constructor acquires a resource, its
    class needs a destructor to release the resource'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[8\] A class with a virtual function should have
    a virtual destructor'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[7\] Don't call virtual functions during
    construction and destruction'
10. [Bjarne Stroustrup's C++11
    FAQ](http://www.stroustrup.com/C++11FAQ.html#noexcept): 'A
    destructor shouldn't throw; a generated destructor is implicitly
    noexcept (independently of what code is in its body) if all of the
    members of its class have noexcept destructors.'
11. [Scott Meyers](CppScottMeyers.md). Effective Modern C++
    (1st Edition). 2014. ISBN: 978-1-491-90399-5. Item 14, page 94: 'By
    default, all memory deallocation functions and all destructors -both
    user-defined and compiler-generated- are implicitly noexcept. There
    is thus no need to declare them noexcept. (Doing so doesn't hurt
    anything, it's just unconventional.)'

 

 

 

 

 

 

