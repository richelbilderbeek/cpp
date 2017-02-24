[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Multiple definition of 'X'](CppLinkErrorMultipleDefinition.htm)
=================================================================================

 

[Multiple definition of 'X'](CppLinkErrorMultipleDefinition.htm) is a
[link error](CppLinkError.htm).

 

[Multiple definition of 'X'](CppLinkErrorMultipleDefinition.htm) is
caused when the [linker](CppLinker.htm) encounters multiple
[definitions](CppDefinition.htm) of the same
[(member)](CppMemberFunction.htm) [function](CppFunction.htm). For
example, see the code below:

 

  -----------------------------------------------------------------------------------------------------------------------
  ` #ifndef A_H #define A_H  struct A {   A(); };  #include <iostream>  A::A() { std::cout << "Hi\n"; }  #endif // A_H`
  -----------------------------------------------------------------------------------------------------------------------

 

This [header file](CppHeaderFile.htm) contains both a
[declaration](CppDeclaration.htm) and [definition](CppDefinition.htm) of
the [constructor](CppConstructor.htm) of [class](CppClass.htm) A.

 

'Huh, but there is an [\#include guard](CppIncludeGuard.htm)!', you
might think. Correct, this does prevent the [compile
error](CppCompileError.htm) ['Redefinition of
'](CppCompileErrorRedefinition.htm). But the
(non-[inline](CppInline.htm)) [definition](CppDefinition.htm) of the
[constructor](CppConstructor.htm) of [class](CppClass.htm) A will be
present in all [translation units](CppUnit.htm) that
[\#include](CppInclude.htm) this [header file](CppHeaderFile.htm).

 

This is an example of data (in this case a [member
function](CppMemberFunction.htm)) with [external
linkage](CppExternalLinkage.htm). Avoid data with [external
linkage](CppExternalLinkage.htm) at [file scope](CppFileScope.htm)
\[1\]. Avoid non-[inline](CppInline.htm) [function](CppFunction.htm)
[definitions](CppDefinition.htm) in [header files](CppHeaderFile.htm)
\[2\].

 

Some solutions are:

-   Put the [declarations](CppDeclaration.htm) in [header
    files](CppHeaderFile.htm), put the [definitions](CppDefinition.htm)
    in [implementation files](CppImplementationFile.htm)
-   Make the [declarations](CppDeclaration.htm) [inline](CppInline.htm)
-   Ensure the [header file](CppHeaderFile.htm) is used by exactly one
    [unit](CppUnit.htm)
-   

 

The first solution is by far the most common. The latter solution is not
always possible.

 

Below is a full project with this [link error](CppLinkError.htm).

 

-   [Download the Qt Creator project
    'CppLinkErrorMultipleDefinition' (zip)](CppLinkErrorMultipleDefinition.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppLinkErrorMultipleDefinition.pro
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

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.1, page 70: 'Avoid data with
    external linkage at file scope'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 9.5, item
    4: 'Avoid non-inline function definitions in headers'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
