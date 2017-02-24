

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ![Wt](PicWt.png) [assert when using the Wt library](CppWtAssert.htm)
=====================================================================================

 

When [linking](CppLink.htm) to the [Wt](CppWt.htm)
[library](CppLibrary.htm), [assert](CppAssert.htm) is removed from the
code, as if by an [NDEBUG](CppNDEBUG.htm) [\#define](CppDefine.htm)
(probably by the DNDEBUG [\#define](CppDefine.htm)).

 

The solution is to write a custom [assert](CppAssert.htm), like those at
[the page about assert](CppAssert.htm).

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 (maverick)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.4.5
-   ![Wt](PicWt.png) [Wt](CppWt.htm): version 3.1.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppWtAssert.pro
--------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-12T10:38:31 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -lwt -lwthttp QMAKE_CXXFLAGS += -DNDEBUG TARGET = CppWtAssert CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------
  ` #include <cassert>  int main() {   assert(1==2); //Should fail }`
  ---------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
