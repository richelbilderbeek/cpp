[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Base class](CppBaseClass.htm)
===============================================

 

A [base class](CppBaseClass.htm) is a type of [class](CppClass.htm) that
is used to [inherit](CppInheritance.htm) member variables and [member
functions](CppMemberFunction.htm) from.

Or: a [base class](CppBaseClass.htm) is the entity that all [derived
classes](CppDerivedClass.htm) share.

 

A special type of [base class](CppBaseClass.htm) is the [abstract base
class](CppAbstractBaseClass.htm).

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [base class example 1: basics](CppBaseClassExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   All [base classes](CppBaseClass.htm) must have a
    ([public](CppPublic.htm)) [virtual](CppVirtual.htm)
    [destructor](CppDestructor.htm) \[1\]
-   Avoid [member variables](CppMemberVariable.htm) in [base
    classes](CppBaseClass.htm) intended as interfaces \[2\]
-   Use [base classes](CppBaseClass.htm) with [member
    variables](CppMemberVariable.htm) to support [implementation
    inheritance](CppImplementationInheritance.htm) \[3\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 50:
    'Make base class destructors public and virtual, or protected
    and nonvirtual'.
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[2\] Avoid data members in base classes intended
    as interfaces'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[7\] Use base classes with data members to
    support implementation inheritance'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
