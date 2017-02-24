
 

 

 

 

 

([C++](Cpp.md)) [Abstract base class](CppAbstractBaseClass.md)
================================================================

 

An [abstract base class](CppAbstractBaseClass.md) (abbreviated to
'ABC') is a type of [abstract class](CppAbstractClass.md) and a type of
[base class](CppBaseClass.md).

 

'An [abstract base class](CppAbstractBaseClass.md) is a
[class](CppClass.md) from which no [objects](CppObject.md) may be
created; it is only used as a [base class](CppBaseClass.md) for the
[derivation](CppDerivedClass.md) of other [classes](CppClass.md). A
[class](CppClass.md) is abstract if it includes at least one [member
function](CppMemberFunction.md) that is [declared](CppDeclaration.md)
as pure [virtual](CppVirtual.md).' \[2\]

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use an [abstract base class](CppAbstractBaseClass.md) to represent
    something common to some, but not all, classes in a hierarchy \[1\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4.
    Advice. page 640: '\[10\] Use a virtual base to represent something
    common to some, but not all, classes in a hierarchy'
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.1: 'An abstract base class is a class from
    which no objects may be created; it is only used as a base class for
    the derivation of other classes. A class is abstract if it includes
    at least one member function that is declared as pure virtual.'

 

 

 

 

 

 

