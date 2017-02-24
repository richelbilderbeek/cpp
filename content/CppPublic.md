



 

 

 

 

 

([C++](Cpp.htm)) [public](CppPublic.htm)
========================================

 

[public](CppPublic.htm) is a [keyword](CppKeyword.htm) for setting
[class](CppClass.htm) access level to [public](CppPublic.htm) (the other
access levels are [private](CppPrivate.htm) and
[protected](CppProtected.htm)) or for [public
inheritance](CppPublicInheritance.htm).

 

The [public](CppPublic.htm) part of a [class](CppClass.htm) is called
its [interface](CppInterface.htm).

 

A [class](CppClass.htm) created with the [keyword](CppKeyword.htm)
[class](CppClass.htm) has a [private](CppPrivate.htm) access level by
default, a [class](CppClass.htm) created by the
[keyword](CppKeyword.htm) [struct](CppStruct.htm) has
[public](CppPublic.htm) access level by default.

 

 

 

 

 

Examples
--------

 

-   [public example 1: basics](CppPublicExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [public](CppPublic.htm) [members](CppMember.htm) for
    [interfaces](CppInterface.htm) \[2\]
-   Avoid [public](CppPublic.htm) [virtual](CppVirtual.htm) [member
    functions](CppMemberFunction.htm); prefer using the [Template Method
    Design Pattern](CppDesignPatternTemplateMethod.htm) instead \[1\].

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). [Exceptional
    C++](CppExceptionalCpp.htm). ISBN: 0-201-61562-2. Item 23, page 84,
    guideline: 'Avoid public virtual functions; prefer using the
    Template Method pattern instead'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[11\] Prefer public members for interfaces'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
