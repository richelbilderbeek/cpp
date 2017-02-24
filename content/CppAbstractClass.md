

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Abstract class](CppAbstractClass.htm)
=======================================================

 

An [abstract class](CppAbstractClass.htm) is a [type of
class](CppClassType.htm) that can not be [instanciated](CppInstance.htm)
itself: only its [derivatived classes](CppDerivedClass.htm) can.

 

An [Abstract base class](CppAbstractBaseClass.htm) is an [abstract
class](CppAbstractClass.htm) that is also a [base
class](CppBaseClass.htm).

 

An [Abstract](CppAbstractClass.htm) can be recognized by a [member
function](CppMemberFunction.htm) starting with the
[keyword](CppKeyword.htm) [virtual](CppVirtual.htm) and ending with
**=0;**. And because all [base classes](CppBaseClass.htm) must have a
[virtual](CppVirtual.htm) [destructor](CppDestructor.htm), an [abstract
class](CppAbstractClass.htm) must also have one.

 

  -------------------------------------------------------------------------------------------------------------
  ` struct ABC {   virtual ~ABC() {} //Empty virtual destructor   virtual void whatMakesMeAbstract() = 0; };`
  -------------------------------------------------------------------------------------------------------------

 

Many [Design Patterns](CppDesignPattern.htm) rely on [abstract
classes](CppAbstractClass.htm), for example the
[Strategy](CppDesignPatternStrategy.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [abstract classes](CppAbstractClass.htm) to focus design on the
    provision of clean [interfaces](CppInterface.htm) \[1\]
-   An [abstract class](CppAbstractClass.htm) should have a
    [virtual](CppVirtual.htm) [destructor](CppDestructor.htm) \[2,3\] to
    ensure proper cleanup \[6\]
-   An [abstract class](CppAbstractClass.htm) typically doesn't need a
    [constructor](CppConstructor.htm) \[4\]
-   Avoid [member variables](CppMemberVariable.htm) in [abstract
    classes](AbstractClass.htm) \[5\]

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[3\] Use abstract classes to focus design on the
    provision of clean interfaces'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice. page 525: '\[4\] If a class has a virtual function, it needs
    a virtual destructor'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[8\] A class with a virtual function should have
    a virtual destructor'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[9\] An abstract class typically doesn't need a
    constructor'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[2\] Avoid data members in base classes intended
    as interfaces'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[4\] Give an abstract class a virtual destructor
    to ensure proper cleanup'

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
