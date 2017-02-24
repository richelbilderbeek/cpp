
 

 

 

 

 

([C++](Cpp.md)) [Error](CppError.md)
======================================

 

When 'something goes wrong'.

 

There are multiple types of [errors](CppError.md) (listed in
chronology, except for the [misc errors](CppMiscError.md)):

1.  [Install errors](CppInstallError.md), when installation fails
2.  [qmake errors](CppQmakeError.md), when [qmake](CppQmake.md) does
    something unexpected
3.  [make errors](CppMakeError.md), when [make](CppMake.md) does
    something unexpected
4.  [Compile errors](CppCompileError.md), emitted by the
    [compiler](CppCompiler.md).
5.  [Link errors](CppLinkError.md), emitted by the
    [linker](CppLinker.md).
6.  [Runtime errors](CppRuntimeError.md), emitted during program
    execution, causing your program to quit
7.  [Misc errors](CppMiscError.md), all other errors

 

Prefer [compile time errors](CppCompileError.md) and [link time
errors](CppLinkError.md) to [run time errors](CppRuntimeError.md)
\[2\]. [Runtime errors](CppRuntimeError.md) are the type of
[errors](CppError.md) that take most time [debugging](CppDebug.md). At
[run time](CppRunTime.md), distinguish between errors and non-errors.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 70:
    'Distinguish between errors and non-errors'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 

 

