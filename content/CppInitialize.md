[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [initialize](CppInitialize.htm)
================================================

 

To [initialize](CppInitialize.htm) an object is to give it an initial
value.

 

There are multiple types of [initialize](CppInitialize.htm):

-   [list initialization](CppListInitialization.htm)
-   [memberwise initialization](CppMemberwiseInitialization.htm)

 

There are four [initialization](CppInitialize.htm) styles, prefer the
first (called [list initialization](CppListInitialization.htm)) \[1\].

 

1.  T a { b };
2.  T a = { b };
3.  T a = b;
4.  T a(b);

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [{} initialization](CppListInitialization.htm) over = and ()
    initialization \[1\]
-   [Initialize](CppInitialize.htm) [members](CppClassMember.htm) and
    [bases](CppBaseClass.htm) in their order of
    [declaration](CppDeclaration.htm) \[2\]
-   Although it is not always necessary to
    [initialize](CppInitialize.htm) every [variable](CppVariable.htm)
    explicitly, doing so will help you avoid many kinds of problems
    \[3\]

 

 

 

 

 

[Examples](CppExamples.htm)
---------------------------

 

-   [initialize example 1: a difference between {} and = with
    references](CppInitializeExample1.htm)
-   [initialize example 2: initializing a reference member
    variable](CppInitializeExample2.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 525: '\[6\] Prefer {} initialization over = and ()
    initialization'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7.
    Advice, page 525: '\[9\] Initialize members and bases in their order
    of declaration'
3.  Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Error Prevention
    Tip 2.1. page 25: 'Although it is not always necessary to initialize
    every variable explicitly, doing so will help you avoid many kinds
    of problems.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
