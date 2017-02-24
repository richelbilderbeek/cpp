

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Error](CppError.htm)
======================================

 

When 'something goes wrong'.

 

There are multiple types of [errors](CppError.htm) (listed in
chronology, except for the [misc errors](CppMiscError.htm)):

1.  [Install errors](CppInstallError.htm), when installation fails
2.  [qmake errors](CppQmakeError.htm), when [qmake](CppQmake.htm) does
    something unexpected
3.  [make errors](CppMakeError.htm), when [make](CppMake.htm) does
    something unexpected
4.  [Compile errors](CppCompileError.htm), emitted by the
    [compiler](CppCompiler.htm).
5.  [Link errors](CppLinkError.htm), emitted by the
    [linker](CppLinker.htm).
6.  [Runtime errors](CppRuntimeError.htm), emitted during program
    execution, causing your program to quit
7.  [Misc errors](CppMiscError.htm), all other errors

 

Prefer [compile time errors](CppCompileError.htm) and [link time
errors](CppLinkError.htm) to [run time errors](CppRuntimeError.htm)
\[2\]. [Runtime errors](CppRuntimeError.htm) are the type of
[errors](CppError.htm) that take most time [debugging](CppDebug.htm). At
[run time](CppRunTime.htm), distinguish between errors and non-errors.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 70:
    'Distinguish between errors and non-errors'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14:
    'Prefer compile- and link-time errors to run-time errors'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
