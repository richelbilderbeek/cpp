
 

 

 

 

 

([C++](Cpp.md)) [std::labs](CppLabs.md)
=========================================

 

[std::labs](CppLabs.md) is a C-style [function](CppFunction.md) to
obtain the absolute value of a [long](CppLong.md).

 

[std::abs](CppAbs.md) is a [function](CppFunction.md) to obtain the
absolute value of most numeric [data types](CppDataType.md).

 

-   Download the Qt Creator project 'CppLabs' (zip)

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.04 (precise)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 12.04 (precise)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.4.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.3

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppLabs.pro
----------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core QT       -= gui TARGET = CppLabs CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const long i = -23;   const long j =  23;   assert(std::labs(i) == j); } `
  ------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
