
 

 

 

 

 

([C++](Cpp.md)) [Abstract class](CppAbstractClass.md)
=======================================================

 

An [abstract class](CppAbstractClass.md) is a [type of
class](CppClassType.md) that can not be [instanciated](CppInstance.md)
itself: only its [derivatived classes](CppDerivedClass.md) can.

 

An [Abstract base class](CppAbstractBaseClass.md) is an [abstract
class](CppAbstractClass.md) that is also a [base
class](CppBaseClass.md).

 

An [Abstract](CppAbstractClass.md) can be recognized by a [member
function](CppMemberFunction.md) starting with the
[keyword](CppKeyword.md) [virtual](CppVirtual.md) and ending with
**=0;**. And because all [base classes](CppBaseClass.md) must have a
[virtual](CppVirtual.md) [destructor](CppDestructor.md), an [abstract
class](CppAbstractClass.md) must also have one.

 

  -------------------------------------------------------------------------------------------------------------
  ` struct ABC {   virtual ~ABC() {} //Empty virtual destructor   virtual void whatMakesMeAbstract() = 0; };`
  -------------------------------------------------------------------------------------------------------------

 

Many [Design Patterns](CppDesignPattern.md) rely on [abstract
classes](CppAbstractClass.md), for example the
[Strategy](CppDesignPatternStrategy.md).

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [abstract classes](CppAbstractClass.md) to focus design on the
    provision of clean [interfaces](CppInterface.md) \[1\]
-   An [abstract class](CppAbstractClass.md) should have a
    [virtual](CppVirtual.md) [destructor](CppDestructor.md) \[2,3\] to
    ensure proper cleanup \[6\]
-   An [abstract class](CppAbstractClass.md) typically doesn't need a
    [constructor](CppConstructor.md) \[4\]
-   Avoid [member variables](CppMemberVariable.md) in [abstract
    classes](AbstractClass.md) \[5\]

 

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[3\] Use abstract classes to focus design on the
    provision of clean interfaces'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[8\] A class with a virtual function should have
    a virtual destructor'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[9\] An abstract class typically doesn't need a
    constructor'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[2\] Avoid data members in base classes intended
    as interfaces'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[4\] Give an abstract class a virtual destructor
    to ensure proper cleanup'

 

 

 

 

 

