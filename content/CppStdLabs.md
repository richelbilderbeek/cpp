



 

 

 

 

 

([C++](Cpp.htm)) [std::labs](CppLabs.htm)
=========================================

 

[std::labs](CppLabs.htm) is a C-style [function](CppFunction.htm) to
obtain the absolute value of a [long](CppLong.htm).

 

[std::abs](CppAbs.htm) is a [function](CppFunction.htm) to obtain the
absolute value of most numeric [data types](CppDataType.htm).

 

-   Download the Qt Creator project 'CppLabs' (zip)

 

 

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.04 (precise)
-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 12.04 (precise)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.4.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.3

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppLabs.pro
----------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core QT       -= gui TARGET = CppLabs CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const long i = -23;   const long j =  23;   assert(std::labs(i) == j); } `
  ------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
