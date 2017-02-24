
 

 

 

 

 

([C++](Cpp.md)) [Multiple definition of 'X'](CppLinkErrorMultipleDefinition.md)
=================================================================================

 

[Multiple definition of 'X'](CppLinkErrorMultipleDefinition.md) is a
[link error](CppLinkError.md).

 

[Multiple definition of 'X'](CppLinkErrorMultipleDefinition.md) is
caused when the [linker](CppLinker.md) encounters multiple
[definitions](CppDefinition.md) of the same
[(member)](CppMemberFunction.md) [function](CppFunction.md). For
example, see the code below:

 

  -----------------------------------------------------------------------------------------------------------------------
  ` #ifndef A_H #define A_H  struct A {   A(); };  #include <iostream>  A::A() { std::cout << "Hi\n"; }  #endif // A_H`
  -----------------------------------------------------------------------------------------------------------------------

 

This [header file](CppHeaderFile.md) contains both a
[declaration](CppDeclaration.md) and [definition](CppDefinition.md) of
the [constructor](CppConstructor.md) of [class](CppClass.md) A.

 

'Huh, but there is an [\#include guard](CppIncludeGuard.md)!', you
might think. Correct, this does prevent the [compile
error](CppCompileError.md) ['Redefinition of
'](CppCompileErrorRedefinition.md). But the
(non-[inline](CppInline.md)) [definition](CppDefinition.md) of the
[constructor](CppConstructor.md) of [class](CppClass.md) A will be
present in all [translation units](CppUnit.md) that
[\#include](CppInclude.md) this [header file](CppHeaderFile.md).

 

This is an example of data (in this case a [member
function](CppMemberFunction.md)) with [external
linkage](CppExternalLinkage.md). Avoid data with [external
linkage](CppExternalLinkage.md) at [file scope](CppFileScope.md)
\[1\]. Avoid non-[inline](CppInline.md) [function](CppFunction.md)
[definitions](CppDefinition.md) in [header files](CppHeaderFile.md)
\[2\].

 

Some solutions are:

-   Put the [declarations](CppDeclaration.md) in [header
    files](CppHeaderFile.md), put the [definitions](CppDefinition.md)
    in [implementation files](CppImplementationFile.md)
-   Make the [declarations](CppDeclaration.md) [inline](CppInline.md)
-   Ensure the [header file](CppHeaderFile.md) is used by exactly one
    [unit](CppUnit.md)
-

 

The first solution is by far the most common. The latter solution is not
always possible.

 

Below is a full project with this [link error](CppLinkError.md).

 

-   [Download the Qt Creator project
    'CppLinkErrorMultipleDefinition' (zip)](CppLinkErrorMultipleDefinition.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLinkErrorMultipleDefinition.pro
---------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += \     main.cpp \     a.cpp  HEADERS += \     a.h  `
  ----------------------------------------------------------------------------------------------------------------

 

 

 

 

 

a.h
---

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef A_H #define A_H  struct A {   A();   void SayHello() const;   inline void SayHelloInline() const; };  #include <iostream>  //A::A() { std::cout << "Constructor\n"; } //Illegal, cannot put constructor here  //void A::SayHello() const { std::cout << "Hello\n"; } //Illegal, cannot put non-inline definition here  inline void A::SayHelloInline() const { std::cout << "HelloInline\n"; }  #endif // A_H `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

a.cpp
-----

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "a.h"  A::A() { std::cout << "Constructor\n"; } //Legal, can put constructor here  void A::SayHello() const { std::cout << "Hello\n"; } //Legal, can put non-inline definition here  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------
  ` #include "a.h"  int main() {   A a;   a.SayHello();   a.SayHelloInline(); } `
  ---------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.1, page 70: 'Avoid data with
    external linkage at file scope'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 9.5, item
    4: 'Avoid non-inline function definitions in headers'

 

 

 

 

 

 

