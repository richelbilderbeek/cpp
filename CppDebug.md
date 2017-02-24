[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Debug](CppDebug.htm)
======================================

 

[Debugging](CppDebug.htm) is the process of removing [bugs](CppBug.htm).

 

[Tools](Tools.htm) for detecting memory management and threading bugs
are, among others, [valgrind](CppValgrind.htm) ([Linux](CppLinux.htm))
and [DrMemory](CppDrMemory.htm) ([Windows](CppWindows.htm)).

 

The process of improving the runtime speed is called
[profiling](CppProfiler.htm).

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   The key question in [debugging](CppDebug.htm) is: How would I know
    if the program actually worked correctly? \[1\]
-   When [defining](CppDefinition.htm) a [template](CppTemplate.htm),
    first design and [debug](CppDebug.htm) a non-template version; later
    generalize by adding parameters \[2\]
-   Making the [data members](CppDataMember.htm) of a
    [class](CppClass.htm) [private](CppPrivate.htm) and the [member
    functions](CppMemberFunction.htm) of the [class](CppClass.htm)
    [public](CppPublic.htm) facilitates [debugging](CppDebug.htm) \[3\]

 

 

 

 

 

[Debugging](CppDebug.htm) [tools](Tools.htm)
--------------------------------------------

 

For [profiling](CppProfiler.htm) [tools](Tools.htm),see
[profiling](CppProfiler.htm).

 

-   ![Windows](PicWindows.png)
    [ApplicationVerifier](ToolApplicationVerifier.htm)
-   ![Linux](PicLinux.png) [valgrind](CppValgrind.htm)
-   ![Windows](PicWindows.png) [DrMemory](ToolDrMemory.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9: 'The key question in debugging
    is 'How would I know if the program actually worked correctly?'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[4\] When defining a template, first design and debug a
    non-template version; later generalize by adding parameters'
3.  Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.4, Error Prevention
    Tip 3.1. page 47: 'Making the data members of a class private and
    the member functions of the class public facilitates debugging
    because problems with data manipulations are localized to either the
    class's member functions or the friends of the class'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
