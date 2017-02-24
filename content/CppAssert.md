

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Assert](CppAssert.htm)
========================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[assert](CppAssert.htm) is a [macro](CppMacro.htm) to do [run
time](CppRunTime.htm) [debugging](CppDebug.htm) checks. After
[debugging](CppDebug.htm), [\#define](CppDefine.htm)
[NDEBUG](CppNDEBUG.htm) to let the [preprocessor](CppPreprocessor.htm)
remove all [assert](CppAssert.htm)s from your code.

 

[assert](CppAssert.htm) is [\#define](CppDefine.htm)d in
[cassert.h](CppCassertH.htm)

 

 

 

 

 

Examples
--------

 

-   [assert example 1: basics](CppAssertExample1.htm)
-   [assert example 2: basics with informative
    output](CppAssertExample2.htm)
-   [assert example 3: a user defined assert](CppAssertExample3.htm)
-   [Assert in a C++ Builder console Application](CppBuilderAssert.htm)
-   [Assert in a Qt Creator console Application](CppQtAssert.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [assert](CppAssert.htm) extensively \[1-5,7\]
-   The use of [assert](CppAssert.htm) statements can help to
    [document](CppDocumentation.htm) the assumptions you make when
    implementing your code \[6\]
-   Do not assume that [assert](CppAssert.htm) is always evaluated \[8\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions and
    invariants'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
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
5.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 24, chapter 'assert()': 'Use
    assert freely'
6.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.6: 'The use of assert
    statements can help to document the assumptions you make when
    implementing your code
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 884: '\[13\] Use static\_assert() and assert()
    extensively'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 30.5.
    Advice. page 884: '\[14\] Do not assume that assert() is always
    evaluated'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
