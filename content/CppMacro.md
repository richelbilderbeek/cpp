
 

 

 

 

 

([C++](Cpp.md)) [Macro](CppMacro.md)
======================================

 

[Macros](CppMacro.md) are [preprocessor](CppPreprocessor.md)
statements.

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

-   Avoid [macros](CppMacro.md) \[1,8\], except [assert](CppAssert.md)
    \[2-6\]
-   Avoid using [preprocessor](CppPreprocessor.md)
    [macros](CppMacro.md) in [header (.h) files](CppHeaderFile.md)
    except as [include guards](CppIncludeGuard.md) \[7\]
-   Use uppercase letters to name a [macro](CppMacro.md) \[9,10\]
-   Add a unique prefix to macro names \[11\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 16: 'Avoid macro's'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions and
    invariants'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Advice 24.5.18:
    'Explicitly express preconditions, postconditions, and other
    assertions as assertions'
4.  Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions to document and verify
    preconditions and postconditions'
5.  Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions for conditions that should
    never occur'.
6.  Jesse Liberty. Sams teach yourself C++ in 24 hours.
    ISBN: 0-672-32224-2. Hour 24, chapter 'assert()': 'Use assert
    freely'
7.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.4
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[22\] Avoid macros'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[23\] If you must use macros, use ugly names
    with lots of capital letters'
10. Trevor Misfeldt, Gregory Bumgardner, Andrew Gray. The elements of
    C++ style. 2004. ISBN: 978-0-521-89308-4. Chapter 4.1, page 17: 'Use
    UPPERCASE and underscores for preprocessor macro names'
11. Trevor Misfeldt, Gregory Bumgardner, Andrew Gray. The elements of
    C++ style. 2004. ISBN: 978-0-521-89308-4. Chapter 4.1, page 17: 'Add
    a unique prefix to macro names'

 

 

 

 

 

 

