
 

 

 

 

 

([C++](Cpp.md)) [Assert](CppAssert.md)
========================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[assert](CppAssert.md) is a [macro](CppMacro.md) to do [run
time](CppRunTime.md) [debugging](CppDebug.md) checks. After
[debugging](CppDebug.md), [\#define](CppDefine.md)
[NDEBUG](CppNDEBUG.md) to let the [preprocessor](CppPreprocessor.md)
remove all [assert](CppAssert.md)s from your code.

 

[assert](CppAssert.md) is [\#define](CppDefine.md)d in
[cassert.h](CppCassertH.md)

 

 

 

 

 

Examples
--------

 

-   [assert example 1: basics](CppAssertExample1.md)
-   [assert example 2: basics with informative
    output](CppAssertExample2.md)
-   [assert example 3: a user defined assert](CppAssertExample3.md)
-   [Assert in a C++ Builder console Application](CppBuilderAssert.md)
-   [Assert in a Qt Creator console Application](CppQtAssert.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [assert](CppAssert.md) extensively \[1-5,7\]
-   The use of [assert](CppAssert.md) statements can help to
    [document](CppDocumentation.md) the assumptions you make when
    implementing your code \[6\]
-   Do not assume that [assert](CppAssert.md) is always evaluated \[8\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions and
    invariants'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Advice 24.5.18:
    'Explicitly express preconditions, postconditions, and other
    assertions as assertions'
3.  Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions to document and verify
    preconditions and postconditions'
4.  Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions for conditions that should
    never occur'.
5.  [Jesse Liberty](CppJesseLiberty.md). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 24, chapter 'assert()': 'Use
    assert freely'
6.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.6: 'The use of assert
    statements can help to document the assumptions you make when
    implementing your code
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 884: '\[13\] Use static\_assert() and assert()
    extensively'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 884: '\[14\] Do not assume that assert() is always
    evaluated'

 

 

 

 

 

 

