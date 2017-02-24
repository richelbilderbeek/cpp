



 

 

 

 

 

([C++](Cpp.htm)) [StdRandExample2](CppStdRandExample2.htm)
==========================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdRandExample2/CppStdRandExample2.pro
------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui  CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRandExample2/main.cpp
-----------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream>  int main() {   for (int i=0; i!=10; ++i)   {     std::srand(0);     std::cout << std::rand() << std::endl;   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
