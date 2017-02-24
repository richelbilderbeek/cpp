
 

 

 

 

 

([C++](Cpp.md)) [public](CppPublic.md)
========================================

 

[public](CppPublic.md) is a [keyword](CppKeyword.md) for setting
[class](CppClass.md) access level to [public](CppPublic.md) (the other
access levels are [private](CppPrivate.md) and
[protected](CppProtected.md)) or for [public
inheritance](CppPublicInheritance.md).

 

The [public](CppPublic.md) part of a [class](CppClass.md) is called
its [interface](CppInterface.md).

 

A [class](CppClass.md) created with the [keyword](CppKeyword.md)
[class](CppClass.md) has a [private](CppPrivate.md) access level by
default, a [class](CppClass.md) created by the
[keyword](CppKeyword.md) [struct](CppStruct.md) has
[public](CppPublic.md) access level by default.

 

 

 

 

 

Examples
--------

 

-   [public example 1: basics](CppPublicExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [public](CppPublic.md) [members](CppMember.md) for
    [interfaces](CppInterface.md) \[2\]
-   Avoid [public](CppPublic.md) [virtual](CppVirtual.md) [member
    functions](CppMemberFunction.md); prefer using the [Template Method
    Design Pattern](CppDesignPatternTemplateMethod.md) instead \[1\].

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). [Exceptional
    C++](CppExceptionalCpp.md). ISBN: 0-201-61562-2. Item 23, page 84,
    guideline: 'Avoid public virtual functions; prefer using the
    Template Method pattern instead'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[11\] Prefer public members for interfaces'

 

 

 

 

 

 

