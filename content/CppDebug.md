
 

 

 

 

 

([C++](Cpp.md)) [Debug](CppDebug.md)
======================================

 

[Debugging](CppDebug.md) is the process of removing [bugs](CppBug.md).

 

[Tools](https://github.com/richelbilderbeek/tools) for detecting memory management and threading bugs
are, among others, [valgrind](CppValgrind.md) ([Linux](CppLinux.md))
and [DrMemory](ToolDrMemory.md) ([Windows](CppWindows.md)).

 

The process of improving the runtime speed is called
[profiling](CppProfiler.md).

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   The key question in [debugging](CppDebug.md) is: How would I know
    if the program actually worked correctly? \[1\]
-   When [defining](CppDefinition.md) a [template](CppTemplate.md),
    first design and [debug](CppDebug.md) a non-template version; later
    generalize by adding parameters \[2\]
-   Making the [data members](CppDataMember.md) of a
    [class](CppClass.md) [private](CppPrivate.md) and the [member
    functions](CppMemberFunction.md) of the [class](CppClass.md)
    [public](CppPublic.md) facilitates [debugging](CppDebug.md) \[3\]

 

 

 

 

 

[Debugging](CppDebug.md) [tools](https://github.com/richelbilderbeek/tools)
--------------------------------------------

 

For [profiling](CppProfiler.md) [tools](https://github.com/richelbilderbeek/tools),see
[profiling](CppProfiler.md).

 

-   ![Windows](PicWindows.png)
    [ApplicationVerifier](ToolApplicationVerifier.md)
-   ![Linux](PicLinux.png) [valgrind](CppValgrind.md)
-   ![Windows](PicWindows.png) [DrMemory](ToolDrMemory.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9: 'The key question in debugging
    is 'How would I know if the program actually worked correctly?'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[4\] When defining a template, first design and debug a
    non-template version; later generalize by adding parameters'
3.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.4, Error Prevention
    Tip 3.1. page 47: 'Making the data members of a class private and
    the member functions of the class public facilitates debugging
    because problems with data manipulations are localized to either the
    class's member functions or the friends of the class'

 

 

 

 

 

 

