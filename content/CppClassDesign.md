
 

 

 

 

 

([C++](Cpp.md)) [Class design](CppClassDesign.md)
===================================================

 

The design of a [class](CppClass.md).

 

Although entire books are written on this subject, here some
[advice](CppAdvice.md) from some experts:

 

 

 

 

 

General
-------

 

-   Represent concepts as classes \[28\]
-   Be clear what [kind of class](CppClassType.md) you're writing
    \[10\]
-   Follow a good [function design](CppFunctionDesign.md). Note: many
    points of [advice](CppAdvice.md)!
-   Follow a good [member function design](CppMemberFunctionDesign.md).
    Note: many points of [advice](CppAdvice.md)!
-   Treat [class design](CppClassDesign.md) as type design \[2\]
-   Make classes as atomic as possible; that is, give each class a
    single, clear purpose \[36\]

 

 

 

 

 

Choosing a [class type](CppClassType.md)
-----------------------------------------

 

-   Prefer minimal [classes](CppClass.md) to monolithic classes \[11\]
-   Prefer a [concrete type](CppConcreteType.md) over more complicated
    classes and over [POD](CppPod.md)s, as a [concrete
    type](CppConcreteType.md) is the simplest kind of class \[31\]
-   Use [abstract classes](CppAbstractBaseClass.md) to focus design on
    the provision of clean [interfaces](CppInterface.md) \[32\]
-   Use [POD](CppPod.md)s only when it really is just data and no
    [invariant](CppInvariant.md) is meaningful for the data members
    \[30\]

 

 

 

 

 

[Interface](CppInterface.md)
-----------------------------

 

-   Seperate the [interface](CppInterface.md) of a
    [class](CppClass.md) from its
    [implementation](CppImplementation.md) \[29\]: allow the user not
    to know what kind of [data types](CppDataType.md) you used in the
    [private](CppPrivate.md) section of your class
-   Make [interfaces](CppInterface.md) easy to use correctly and hard
    to use incorrectly \[1\]
-   Start with a minimal [interface](CppInterface.md) to a class, as
    small and simple as you need to solve the problem at hand \[37\]
-   Don't try to anticipate all the ways that your class might be used
    \[37\]
-   Be aware that once a class is in use you cannot shrink the
    [interface](CppInterface.md) without disturbing client code \[37\]
-   [Declare](CppDeclaration.md) [member
    variables](CppMemberVariable.md) [private](CppPrivate.md)
    \[5,9,19,27\], except in [POD](CppPod.md)s \[19\]
-   Use [helper functions](CppHelperFunction.md) when type conversion
    should apply to all parameters \[7\]
-   Consider support for a non-throwing [swap](CppStdSwap.md) \[8\]
-   Use [abstract classes](CppAbstractClass.md) to specify
    [interfaces](CppInterface.md) \[32\]
-   Use [abstract classes](CppAbstractClass.md) to keep implementation
    details out of [interfaces](CppInterface.md) \[32\]
-   Prefer providing abstract [interfaces](CppInterface.md) \[14\]
-   Prefer [composition](CppComposition.md) to
    [inheritance](CppInheritance.md) \[12\]
-   Avoid inheriting from [classes](CppClass.md) that were not designed
    to be [base classes](CppBaseClass.md) \[13\]
-   Public inheritance is substitutability. Inherit, not te reuse, but
    to be reused \[15\]
-   Practice safe overriding \[16\]
-   Consider making virtual functions nonpublic, and public functions
    nonvirtual \[17\]
-   Don't give away your internals \[20\]
-   Write the [test](CppTest.md) code first \[34,35\]
-   Keep the [test](CppTest.md) code with the [class](CppClass.md) to
    be tested \[34\]
-   Write the [test](CppTest.md) code to verify that your [class
    design](CppClassDesign.md) is complete \[35\]
-   [Pimpl](CppPimpl.md) judiciously \[21\]
-   Always provide [new](CppNew.md) and [delete](CppDelete.md)
    together \[23\]
-   If you provide any class-specific new, provide all of the standard
    forms (plain, in-place, and nothrow) \[24\]
-   Avoid providing implicit conversions \[18\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 18: Make interfaces easy to use correctly
    and hard to use incorrectly.
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 19: Treat class design as type design.
3.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 20: Prefer pass-by-reference-to-const
    to pass-by-value.
4.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 21: Don't try to return a reference when
    you must return an object.
5.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 22: Declare data members private.
6.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 23: Prefer non-member non-friend functions
    to member functions.
7.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 24: Declare non-member functions when type
    conversion should apply to all parameters
8.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 25: Consider support for a
    non-throwing swap.
9.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 11: 'Hide information'.
10. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 32: 'Be clear what kind of class you're writing'.
11. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 33: 'Prefer minimal classes to monolithic classes'.
12. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 34: 'Prefer composition to inheritance'.
13. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 35: 'Avoid inheriting from classes that were not designed to
    be base classes'.
14. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 36: 'Prefer providing abstract interfaces'.
15. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 37: 'Public inheritance is substitutability. Inherit, not te
    reuse, but to be reused'.
16. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 38: 'Practive safe overriding'.
17. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 39: 'Consider making virtual functions nonpublic, and public
    functions nonvirtual'.
18. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 40: 'Avoid providing implicit conversions'.
19. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).
20. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 42: 'Don't give away your internals'.
21. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 43: 'Pimpl judiciously'.
22. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 44: 'Prefer writing nonmember nonfriend functions'
23. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 45: 'Always provide new and delete together'.
24. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 46: 'If you provide any class-specific new, provide all of
    the standard forms (plain, in-place, and nothrow)'.
25. [Bjarne Stroustrup](CppBjarneStroustrup.md)'s C++ glossary:
    http://www.research.att.com/\~bs/glossary.html\#Gclass
26. C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.
27. [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0.
28. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[1\] Represent concepts as classes'
29. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[2\] Seperate the interface of a class from its
    implementation'
30. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[3\] Use public data (structs) only when it
    really is just data and no invariant is meaningful for the data
    members'
31. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[7\] A concrete type is the simplest kind
    of class. Where applicable, prefer a concrete type over more
    complicated classes and over plain data structures'
32. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[6\] Use abstract classes to focus design on the
    provision of clean interfaces'
33. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7.
    Advice. page 611: '\[7\] Use abstract classes to keep implementation
    details out of interfaces'
34. [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 11: 'Write the test code first (before
    you write the class), and keep it with the class. Automate the
    running of your tests through a makefile or similar tool. This way,
    any changes can be automatically verified by running the test code,
    and you’ll immediately discover errors. Because you know that you
    have the safety net of your test framework, you will be bolder about
    making sweeping changes when you discover the need. Remember that
    the greatest improvements in languages come from the built-in
    testing that type checking, exception handling, etc., provide, but
    those features take you only so far. You must go the rest of the way
    in creating a robust system by filling in the tests that verify
    features that are specific to your class or program.'
35. [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 12: 'Write the test code first (before
    you write the class) in order to verify that your class design
    is complete. If you can’t write test code, you don’t know what your
    class looks like. In addition, the act of writing the test code will
    often flush out additional features or constraints that you need in
    the class – these features or constraints don’t always appear during
    analysis and design.'
36. [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 14: 'Make classes as atomic as
    possible; that is, give each class a single, clear purpose. If your
    classes or your system design grows too complicated, break complex
    classes into simpler ones. The most obvious indicator of this is
    sheer size: if a class is big, chances are it’s doing too much and
    should be broken up.'
37. [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 23: 'Less is more. Start with a minimal
    interface to a class, as small and simple as you need to solve the
    problem at hand, but don’t try to anticipate all the ways that your
    class might be used. As the class is used, you’ll discover ways you
    must expand the interface. However, once a class is in use you
    cannot shrink the interface without disturbing client code. If you
    need to add more functions, that’s fine; it won’t disturb code,
    other than forcing recompiles. But even if new member functions
    replace the functionality of old ones, leave the existing interface
    alone (you can combine the functionality in the underlying
    implementation if you want). If you need to expand the interface of
    an existing function by adding more arguments, leave the existing
    arguments in their current order, and put default values on all of
    the new arguments; this way you won’t disturb any existing calls to
    that function.'

 

 

 

 

 

 

