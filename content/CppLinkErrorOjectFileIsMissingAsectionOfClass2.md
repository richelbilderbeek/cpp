



 

 

 

 

 

([C++](Cpp.htm)) [Oject file MyFile.OBJ is missing a section of class 2](CppLinkErrorOjectFileIsMissingAsectionOfClass2.htm)
============================================================================================================================

 

[Link error](CppLinkError.htm).

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

Project type: Console

 

 

 

 

 

Full error messages
-------------------

 

  --------------------------------------------------------------------------------------
  ` [Linker Fatal Error] Fatal: Oject file MyFile.OBJ is missing a section of class 2`
  --------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

This error occurs when:

-   One [header file](CppHeaderFile.htm) contains the
    [declaration](CppDeclaration.htm) of a [global](CppGlobal.htm)
    [variable](CppVariable.htm)
-   This [global](CppGlobal.htm) [variable](CppVariable.htm) is not put
    into a [namespace](CppNamespace.htm)
-   Two [implementation files (.cpp)](CppImplementationFile.htm)
    [\#include](CppInclude.htm) this [header file](CppHeaderFile.htm)
-   The project option 'Pre-compiled headers' is not set to 'None'

 

[Download a C++ Builder project with this
error](CppLinkErrorOjectFileIsMissingAsectionOfClass2.zip).

 

 

 

 

 

Solutions
---------

 

There are more.

 

 

 

 

 

### Avoid using [globals](CppGlobal.htm) (recommended)

 

Restructure the program so you will not need to use
[globals](CppGlobal.htm). If this fails, use the
[Singleton](CppSingletonDesignPattern.htm) [Design
Pattern](CppDesignPattern.htm).

 

 

 

 

 

### Turn of pre-compiled headers (not recommended)

 

Go to 'Project | Options | Compiler | Pre-compiled headers' and select
'None'. Your error message will change to the following warning:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [Linker Warning] Public symbol '_x' defined in both module MyUnit1.OBJ and MyUnit2.OBJ [Linker Warning] Public symbol '_x' defined in both module MyUnit1.OBJ and MyUnit3.OBJ`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This solution is not recommended, because one should not use
[global](CppGlobal.htm) data \[1-5\], nor work in the global namespace
\[6\].

 

 

 

 

 

### Put the [global](CppGlobal.htm) [variable](CppVariable.htm) in a [namespace](CppNamespace.htm) (not recommended)

 

Suppose you have [declared](CppDeclaration.htm) an [integer](CppInt.htm)
called 'x' in a [header file (.h)](CppHeaderFile.htm) like below:

 

  -----------
  ` int x;`
  -----------

 

Put it into a [namespace](CppNamespace.htm) called 'global' like below:

 

  ----------------------------------
  ` namespace global {   int x; }`
  ----------------------------------

 

 

 

 

 

Your error message will change to the following warning:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` [Linker Warning] Public symbol 'global::x' defined in both module MyUnit1.OBJ and MyUnit2.OBJ [Linker Warning] Public symbol 'global::x' defined in both module MyUnit1.OBJ and MyUnit3.OBJ`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This solution is not recommended, because one should not use
[global](CppGlobal.htm) data \[1-5\], nor work in the global
[namespace](CppNamespace.htm) \[6\].

 

 

 

 

### Make the [global](CppGlobal.htm) [variable](CppVariable.htm) [static](CppStatic.htm) (not recommended)

 

Suppose you have [declared](CppDeclaration.htm) an [integer](CppInt.htm)
called 'x' in a [header file (.h)](CppHeaderFile.htm) like below:

 

  -----------
  ` int x;`
  -----------

 

Make it [static](CppStatic.htm) like below:

 

  ------------------
  ` static int x;`
  ------------------

 

 

 

 

 

This solution is not recommended, because one should not use
[global](CppGlobal.htm) data \[1-5\], nor work in the global
[namespace](CppNamespace.htm) \[6\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 10:
    'Minimize global and shared data'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 18:
    'Declare variables as locally as possible'
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't
    use global data (use members)'
4.  [Jarrod Hollingworth](CppJarrodHollingworth.htm), Bob Swart, Mark
    Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide.
    ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
5.  [Jesse Liberty](CppJesseLiberty.htm). Sams teach yourself C++ in
    24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables':
    'In C++, global variables are avoided because they can create very
    confusing code that is hard to maintain.'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition).ISBN: 0-201-88954-4. Chapter C.14.15: 'Don't
    pollute the global namespace'

 

 

 

 

 





 



