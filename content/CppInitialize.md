



 

 

 

 

 

([C++](Cpp.md)) [initialize](CppInitialize.md)
================================================

 

To [initialize](CppInitialize.md) an object is to give it an initial
value.

 

There are multiple types of [initialize](CppInitialize.md):

-   [list initialization](CppListInitialization.md)
-   [memberwise initialization](CppMemberwiseInitialization.md)

 

There are four [initialization](CppInitialize.md) styles, prefer the
first (called [list initialization](CppListInitialization.md)) \[1\].

 

1.  T a { b };
2.  T a = { b };
3.  T a = b;
4.  T a(b);

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [{} initialization](CppListInitialization.md) over = and ()
    initialization \[1\]
-   [Initialize](CppInitialize.md) [members](CppClassMember.md) and
    [bases](CppBaseClass.md) in their order of
    [declaration](CppDeclaration.md) \[2\]
-   Although it is not always necessary to
    [initialize](CppInitialize.md) every [variable](CppVariable.md)
    explicitly, doing so will help you avoid many kinds of problems
    \[3\]

 

 

 

 

 

[Examples](CppExamples.md)
---------------------------

 

-   [initialize example 1: a difference between {} and = with
    references](CppInitializeExample1.md)
-   [initialize example 2: initializing a reference member
    variable](CppInitializeExample2.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 525: '\[6\] Prefer {} initialization over = and ()
    initialization'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 525: '\[9\] Initialize members and bases in their order
    of declaration'
3.  Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Error Prevention
    Tip 2.1. page 25: 'Although it is not always necessary to initialize
    every variable explicitly, doing so will help you avoid many kinds
    of problems.'

 

 

 

 

 





 



