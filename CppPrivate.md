[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [private](CppPrivate.htm)
==========================================

 

[private](CppPrivate.htm) is a [keyword](CppKeyword.htm) for setting
[class](CppClass.htm) access level to [private](CppPrivate.htm) (the
other access levels are [public](CppPublic.htm) and
[protected](CppProtected.htm)) or for [private
inheritance](CppPrivateInheritance.htm).

 

A [class](CppClass.htm) created with the [keyword](CppKeyword.htm)
[class](CppClass.htm) has a [private](CppPrivate.htm) access level by
default, a [class](CppClass.htm) created by the
[keyword](CppKeyword.htm) [struct](CppStruct.htm) has
[public](CppPublic.htm) access level by default.

 

 

 

 

 

Examples
--------

 

-   [private example 1: basic](CppPrivateExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   [Declare](CppDeclaration.htm) [member
    variables](CppMemberVariable.htm) [private](CppPrivate.htm) \[1-5\],
    except in [POD](CppPod.htm)s \[4\]
-   Prefer [private](CppPrivate.htm) [members](CppMember.htm) for
    implementation details \[6\]
-   Making the [data members](CppDataMember.htm) of a
    [class](CppClass.htm) [private](CppPrivate.htm) and the [member
    functions](CppMemberFunction.htm) of the [class](CppClass.htm)
    [public](CppPublic.htm) facilitates [debugging](CppDebug.htm) \[7\]
-   An attempt by a [function](CppFunction.htm), which is not a
    [member](CppMemberFunction.htm) of a particular
    [class](CppClass.htm) (or a [friend](CppFriend.htm) of that
    [class](CppClass.htm)) to access a [private](CppPrivate.htm)
    [member](CppDataMember.htm) of that [class](CppClass.htm) is a
    [compilation error](CppCompileError.htm) \[8\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section D.2: Major Design Rules, Chapter
    2, page 820: 'Keep class data members private'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 22: Declare data members private.
3.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 11: 'Hide information'.
4.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).
5.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0.
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
