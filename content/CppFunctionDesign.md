



 

 

 

 

 

([C++](Cpp.htm)) [function design](CppFunctionDesign.htm)
=========================================================

 

[Function design](CppFunctionDesign.htm) is the correct design of a
[function](CppFunction.htm). [Exercise \#2: correct function
declarations](CppExerciseCorrectFunctionDeclarations.htm) is an exercise
in correct [function design](CppFunctionDesign.htm).

 

The most important to get correct is the [function
declaration](CppFunctionDeclaration.htm).

 

Here is some [advice](CppAdvice.htm):

 

 

 

 

 

General
-------

 

-   Avoid writing long [functions](CppFunction.htm) \[1-2,5,35\]
-   Avoid using [functions](CppFunction.htm) with a large number of
    arguments \[36\]
-   Prefer functions over [macros](CppMacro.htm) \[23,24\]
-   If a function may have to be evaluated at compile time, declare it
    [constexpr](CppConstexpr.htm) \[7\]

 

 

 

 

 

The name of the function should say what it does
------------------------------------------------

 

-   Do use names like [Swap](CppSwap.htm),
    [GetDistance](CppGetDistance.htm), [StrToInt](CppStrToInt.htm)
-   Do not use names like DoIt, Transmogrify, Stuff
-   Exceptions: Transmogrify is a function name commonly used in the
    literature to denote a function you are not aware of what it is
    doing

 

 

 

 

 

A function should perform a single logical operation \[4\]
----------------------------------------------------------

 

-   Do not use names with 'And' in it, like SwapAndGetMean
-   Do use two functions instead, Swap and GetMean
-   Exceptions: some mathematical functions can cooperate and so improve
    runtime speed: [MeanAndStdDev](CppMeanAndStdDev.htm) executes faster
    then calling the seperate functions for Mean and StdDev

 

 

 

 

 

The [return type](CppReturnType.htm) is expected from the name of the function
------------------------------------------------------------------------------

 

-   If a function cannot return, mark it
    [\[\[noreturn\]\]](CppNoreturn.htm) \[8\]
-   Do give a function a [void](CppVoid.htm) [return
    type](CppReturnType.htm) when it has no [return
    type](CppReturnType.htm)
-   Do return a non-[pointer](CppPointer.htm)
    non-[reference](CppReference.htm) object when a function is expected
    to always execute successfully on the assumptions that its
    [arguments](CppArgument.htm) are valid
-   Return a result as a return value rather than modifying an object
    through an argument \[11\]
-   Do return a [pointer](CppPointer.htm) (or better: a [smart
    pointer](CppSmartPointer.htm)) to a [data type](CppDataType.htm)
    when the [return type](CppReturnType.htm) can be
    [null](CppNull.htm), that is: empty. If the
    [pointer](CppPointer.htm) needs to be read-only, make it
    [const](CppConst.htm) (for example '[const](CppConst.htm) T \*
    [const](CppConst.htm) GetT()', where GetT is a function that returns
    a pointer to a T)
-   Do not make a function return a [reference](CppReference.htm) to a
    function's [local](CppLocal.htm) variable \[6,31\], this leads to
    undefined behavior
-   Do not make a function return an error code, use
    [exceptions](CppException.htm) instead \[32\]

 

 

 

 

 

The function arguments are expected from the name of the function
-----------------------------------------------------------------

 

-   A function declared with an empty parameter list takes no
    arguments \[37\]. Or: write 'int f()' instead of 'int f(void)'
    \[37\]
-   Prefer pass-by-reference-to-const to pass-by-value \[30\]
-   Use pass-by-non-const-reference only if you have to \[14\]
-   Do use a non-[pointer](CppPointer.htm) [reference](CppReference.htm)
    object for expensive-to-copy data types, like
    [std::string](CppString.htm),
    [std::vector](CppVector.htm)&lt;int&gt; or Database. Make the
    argument [const](CppConst.htm) if it must be marked read-only \[10\]
-   Do use a non-[pointer](CppPointer.htm)
    non-[reference](CppReference.htm) object for standard data types
    like int \[9\]. Make the argument [const](CppConst.htm) if it must
    be marked read-only
-   Do use a [pointer](CppPointer.htm) (or better: a [smart
    pointer](CppSmartPointer.htm)) to a [data type](CppDataType.htm)
    when the [argument](CppArgument.htm) can be
    [nullptr](CppNullptr.htm)/[null](CppNull.htm)/empty \[13\]. If the
    [pointer](CppPointer.htm) needs to be read-only, make it
    [const](CppConst.htm) (for example 'void CoutT([const](CppConst.htm)
    T \* [const](CppConst.htm) t)', where CoutT is a function that uses
    std::cout on a T)
-   Avoid passing [arrays](CppArray.htm) as [pointers](CppPointer.htm)
    \[16\]
-   Assume that a [char\*](CppCharPointer.htm) or a const
    [char\*](CppCharPointer.htm) [argument](CppArgument.htm) points to a
    C-style string \[15\]
-   Use rvalue references to implement move and forwarding \[12\]
-   Pass a homogeneous list of unknown length as an
    [std::initializer\_list](CppInitializer_list.htm) or as some other
    [container](CppContainer.htm) \[17\]
-   Avoid unspecified numbers of arguments (...) \[18\]
-   Prefer to pass function objects (including lambdas) and virtual
    functions to pointers to functions \[22\]

 

 

 

 

 

Specify preconditions and postconditions for your functions \[21,25-28\]
------------------------------------------------------------------------

 

-   Do use [assert](CppAssert.htm) and [exceptions](CppException.htm) to
    make clear to the client which input the function cannot handle. For
    example, the square root of a negative number does not exist
-   Do not use error codes as return types, use
    [exceptions](CppException.htm) instead \[32\]

 

 

 

 

 

Exception handling
------------------

 

-   Don't try to [catch](CppCatch.htm) every
    [exception](CppException.htm) in every [function](CppFunction.htm)
    \[29\]
-   Assume that every [exception](CppException.htm) that can be
    [thrown](CppThrow.htm) by a [function](CppFunction.htm) will be
    [thrown](CppThrow.htm) \[33\]
-   If a [function](CppFunction.htm) may not [throw](CppThrow.htm),
    [declare](CppDeclaration.htm) it [noexcept](CppNoexcept.htm) \[34\]

 

 

 

 

 

Function overloading
--------------------

 

-   Use overloading when functions perform conceptually the same task on
    different types \[19\]
-   When overloading on integers, provide functions to eliminate common
    ambiguities \[20\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 20:
    'Avoid long functions. Avoid deep nesting'
2.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 1: 'Any one function (or method) will
    contain no more than 200 logical source lines of code.'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[1\] "Package meaningful operations as carefully
    named functions'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[2\] A function should perform a single logical
    operation'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[3\] Keep functions short'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[4\] Don't return pointers or references to
    local variables'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[5\] If a function may have to be evaluated at
    compile time, declare it constexpr'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[6\] If a function cannot return, mark it
    \[\[noreturn\]\]'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[7\] Use pass-by-value for small objects'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[8\] Use pass-by-const-reference to pass large
    values that you don't need to modify'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[9\] Return a result as a return value rather
    than modifying an object through an argument'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[10\] Use rvalue references to implement move
    and forwarding'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[11\] Pass a pointer if "no object" is a valid
    alternative (and represent "no object" by nullptr)'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[12\] Use pass-by-non-const-reference only if
    you have to'
15. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[14\] Assume that a char\* or a const char\*
    argument points to a C-style string'
16. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[15\] Avoid passing arrays as pointers'
17. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[16\] Pass a homogeneous list of unknown length
    as an initializer\_list (or as some other container)'
18. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[17\] Avoid unspecified numbers of arguments
    (...)'
19. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[18\] Use overloading when functions perform
    conceptually the same task on different types'
20. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[19\] When overloading on integers, provide
    functions to eliminate common ambiguities'
21. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[20\] Specify preconditions and postconditions
    for your functions'
22. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[21\] Prefer function objects
    (including lambdas) and virtual functions to pointers to functions'
23. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[22\] Avoid macros'
24. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 16: 'Avoid macro's'.
25. [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    68: 'Assert liberally to document internal assumptions and
    invariants'
26. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Advice 24.5.18:
    'Explicitly express preconditions, postconditions, and other
    assertions as assertions'
27. Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions to document and verify
    preconditions and postconditions'
28. Steve McConnell. Code Complete (2nd edition). 2004.
    ISBN: -735619670. Chapter 8.2 'Assertions', paragraph 'Guidelines
    for using asserts': 'Use assertions for conditions that should
    never occur'.
29. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[8\] 'Don't try to catch every exception in
    every function'
30. [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 20: Prefer pass-by-reference-to-const
    to pass-by-value.
31. [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 21: Don't try to return a reference when
    you must return an object.
32. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 386: '\[3\] Use exceptions for error handling'
33. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[33\] Assume that every exception that can be
    thrown by a function will be thrown'
34. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice, page 387: '\[23\] If your function may not throw, declare it
    noexcept'
35. [Bruce Eckel](CppBruceEckel.htm). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 15: 'Watch for long member
    function definitions. A function that is long and complicated is
    difficult and expensive to maintain, and is probably trying to do
    too much all by itself. If you see such a function, it indicates
    that, at the least, it should be broken up into multiple functions.
    It may also suggest the creation of a new class.'
36. [Bruce Eckel](CppBruceEckel.htm). Thinking in C++, second edition,
    volume 1. 2000. ISBN: 0-13-979809-9. Chapter B:
    Programming Guidelines. Item 16: 'Watch for long argument lists.
    Function calls then become difficult to write, read and maintain.
    Instead, try to move the member function to a class where it
    is (more) appropriate, and/or pass objects in as arguments.'
37. Working Draft, Standard for Programming Language C++.
    2014-08-22. N3936. Paragraph C.1.7. First change. 'In C++, a
    function declared with an empty parameter list takes no arguments.
    In C, an empty parameter list means that the number and type of the
    function arguments are unknown.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
