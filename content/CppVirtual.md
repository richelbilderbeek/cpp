



 

 

 

 

 

([C++](Cpp.htm)) [virtual](CppVirtual.htm)
==========================================

 

[virtual](CppVirtual.htm) is a [keyword](CppKeyword.htm) to denote that
a [class](CppClass.htm) [member function](CppMemberFunction.htm) might
have different behaviour in its [derived classes](CppDerivedClass.htm).

 

Example
-------

 

Humans say hello differently. In this example there are two kinds of
humans that say hello differently: SilentHuman and LoudHuman:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>   struct Human {   virtual void SayHello() const = 0;   virtual ~Human() {} // All base classes must have a public virtual destructor [1] };   struct SilentHuman : public Human {   void SayHello() const { std::cout << "...hello...\n"; } };   struct LoudHuman : public Human {   void SayHello() const { std::cout << "HELLO!\n"; } };`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that it is decided that a plain Human cannot say hello. This can be
stated by ending the declaration of SayHello with '=0'. This also makes
it impossible to create a Human (you can only create (derived) types of
Human). This makes Human an [abstract base
class](CppAbstractBaseClass.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   If a [class](CppClass.htm) has a [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm), it needs a
    [virtual](CppVirtual.htm) [destructor](CppDestructor.htm) \[4,8\]
-   Avoid calling [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm) in
    [constructors](CppConstructor.htm) and
    [destructors](CppDestructor.htm) \[2\]
-   Don't call [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm) in
    [constructors](CppConstructor.htm) and
    [destructors](CppDestructor.htm) \[6\]
-   Avoid [public](CppPublic.htm) [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm); prefer using the [Template Method
    Design Pattern](CppDesignPatternTemplateMethod.htm) instead \[3\]

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 50: 'Make base class destructors public and virtual, or
    protected and nonvirtual'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 49: 'Avoid calling virtual functions in constructors and
    destructors'
3.  [Herb Sutter](CppHerbSutter.htm). [Exceptional
    C++](CppExceptionalCpp.htm). ISBN: 0-201-61562-2. Item 23, page 84,
    guideline: 'Avoid public virtual functions; prefer using the
    Template Method pattern instead'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[8\] A class with a virtual function should have
    a virtual destructor'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7.
    Advice. page 663: '\[7\] Don't call virtual functions during
    construction and destruction'

 

 

 

 

 





 



