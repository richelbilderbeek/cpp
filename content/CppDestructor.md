



 

 

 

 

 

([C++](Cpp.htm)) [Destructor](CppDestructor.htm)
================================================

 

A [destructor](CppDestructor.htm) is a [class](CppClass.htm) element
that is called when a [class](CppClass.htm) goes out of
[scope](CppScope.htm). The [class](CppClass.htm) element that is called
when a [class](CppClass.htm) is created is called the
[constructor](CppConstructor.htm).

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [destructor example 1: basics](CppDestructorExample1.htm)
-   [destructor example 2: detruction
    sequence](CppDestructorExample2.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Design [constructors](CppContructor.htm), assignments, and the
    [destructor](CppDestructor.htm) as a matched set of operations \[5\]
-   All [base classes](CppBaseClass.htm) must have a
    ([public](CppPublic.htm)) [virtual](CppVirtual.htm)
    [destructor](CppDestructor.htm) \[1,3\]
-   A non-[base class](CppBaseClass.htm) should have a
    (non-[public](CppPublic.htm)) non-[virtual](CppVirtual.htm)
    [destructor](CppDestructor.htm) \[1,3\]
-   Avoid calling [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm) in
    [constructors](CppConstructor.htm) and
    [destructors](CppDestructor.htm) \[2\]
-   Don't call [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm) in
    [constructors](CppConstructor.htm) and
    [destructors](CppDestructor.htm) \[9\]
-   Never let an [exception](CppException.htm) escape from a
    [destructor](CppDestructor.htm) \[4\]
-   If a [constructor](CppConstructor.htm) acquires a resource, its
    class needs a [destructor](CppDestructor.htm) to release the
    resource \[6\]
-   If a [class](CppClass.htm) has a [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm), it needs a
    [virtual](CppVirtual.htm) [destructor](CppDestructor.htm) \[7,8\]
-   Generated [destructors](CppDestructor.htm) are implicitly
    [noexcept](CppNoexcept.htm) \[10,11\]. Declaring a
    [destructors](CppDestructor.htm) [noexcept](CppNoexcept.htm)
    explicitly is harmless and unconventional \[11\].

 

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 50:
    'Make base class destructors public and virtual, or protected
    and nonvirtual'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 49: 'Avoid calling virtual functions in constructors and
    destructors'
3.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 78: 'All base classes with a virtual
    function shall define a virtual destructor.'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[30\] Never let an exception escape from a
    destructor'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[1\] Design constructors, assignments, and the
    destructor as a matched set of operations'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[3\] If a constructor acquires a resource, its
    class needs a destructor to release the resource'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[8\] A class with a virtual function should have
    a virtual destructor'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[7\] Don't call virtual functions during
    construction and destruction'
10. [Bjarne Stroustrup's C++11
    FAQ](http://www.stroustrup.com/C++11FAQ.html#noexcept): 'A
    destructor shouldn't throw; a generated destructor is implicitly
    noexcept (independently of what code is in its body) if all of the
    members of its class have noexcept destructors.'
11. [Scott Meyers](CppScottMeyers.htm). Effective Modern C++
    (1st Edition). 2014. ISBN: 978-1-491-90399-5. Item 14, page 94: 'By
    default, all memory deallocation functions and all destructors -both
    user-defined and compiler-generated- are implicitly noexcept. There
    is thus no need to declare them noexcept. (Doing so doesn't hurt
    anything, it's just unconventional.)'

 

 

 

 

 





 



