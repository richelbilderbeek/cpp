
 

 

 

 

 

([C++](Cpp.md)) [std::call\_once](CppCall_once.md)
====================================================

 

[std::call\_once](CppCall_once.md) is a [C++11](Cpp11.md) standard
[function](CppFunction.md) to call another [function](CppFunction.md)
exactly one time.

 

-   [Download the Qt Creator project
    'CppCall\_once' (zip)](CppCall_once.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.10 (oneiric)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.3.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.1

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppCall\_once.pro
----------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2012-02-11T06:20:36 # #------------------------------------------------- QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x TARGET = CppCall_once CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <thread>  void f() { std::cout << "Hello world\n"; }  int main() {   std::once_flag flag;   std::call_once(flag,&f);   std::call_once(flag,&f);   std::call_once(flag,&f); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ----------------
  ` Hello world`
  ----------------

 

 

 

 

 

 

