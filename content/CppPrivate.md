
 

 

 

 

 

([C++](Cpp.md)) [private](CppPrivate.md)
==========================================

 

[private](CppPrivate.md) is a [keyword](CppKeyword.md) for setting
[class](CppClass.md) access level to [private](CppPrivate.md) (the
other access levels are [public](CppPublic.md) and
[protected](CppProtected.md)) or for [private
inheritance](CppPrivateInheritance.md).

 

A [class](CppClass.md) created with the [keyword](CppKeyword.md)
[class](CppClass.md) has a [private](CppPrivate.md) access level by
default, a [class](CppClass.md) created by the
[keyword](CppKeyword.md) [struct](CppStruct.md) has
[public](CppPublic.md) access level by default.

 

 

 

 

 

Examples
--------

 

-   [private example 1: basic](CppPrivateExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   [Declare](CppDeclaration.md) [member
    variables](CppMemberVariable.md) [private](CppPrivate.md) \[1-5\],
    except in [POD](CppPod.md)s \[4\]
-   Prefer [private](CppPrivate.md) [members](CppMember.md) for
    implementation details \[6\]
-   Making the [data members](CppDataMember.md) of a
    [class](CppClass.md) [private](CppPrivate.md) and the [member
    functions](CppMemberFunction.md) of the [class](CppClass.md)
    [public](CppPublic.md) facilitates [debugging](CppDebug.md) \[7\]
-   An attempt by a [function](CppFunction.md), which is not a
    [member](CppMemberFunction.md) of a particular
    [class](CppClass.md) (or a [friend](CppFriend.md) of that
    [class](CppClass.md)) to access a [private](CppPrivate.md)
    [member](CppDataMember.md) of that [class](CppClass.md) is a
    [compilation error](CppCompileError.md) \[8\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section D.2: Major Design Rules, Chapter
    2, page 820: 'Keep class data members private'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 22: Declare data members private.
3.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 11: 'Hide information'.
4.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).
5.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[10\] Prefer private members for implementation
    details'
7.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.4, Error Prevention
    Tip 3.1. page 47: 'Making the data members of a class private and
    the member functions of the class public facilitates debugging
    because problems with data manipulations are localized to either the
    class's member functions or the friends of the class'
8.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.4, Common Programming
    Error 3.2. page 47: 'An attempt by a function, which is not a member
    of a particular class (or a friend of that class) to access a
    private member of that class is a compilation error.'

 

 

 

 

 

 

