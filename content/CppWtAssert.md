



 

 

 

 

 

([C++](Cpp.md)) ![Wt](PicWt.png) [assert when using the Wt library](CppWtAssert.md)
=====================================================================================

 

When [linking](CppLink.md) to the [Wt](CppWt.md)
[library](CppLibrary.md), [assert](CppAssert.md) is removed from the
code, as if by an [NDEBUG](CppNDEBUG.md) [\#define](CppDefine.md)
(probably by the DNDEBUG [\#define](CppDefine.md)).

 

The solution is to write a custom [assert](CppAssert.md), like those at
[the page about assert](CppAssert.md).

 

 

 

 

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.4.5
-   ![Wt](PicWt.png) [Wt](CppWt.md): version 3.1.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppWtAssert.pro
--------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-01-12T10:38:31 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -lwt -lwthttp QMAKE_CXXFLAGS += -DNDEBUG TARGET = CppWtAssert CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------
  ` #include <cassert>  int main() {   assert(1==2); //Should fail }`
  ---------------------------------------------------------------------

 

 

 

 

 





 



