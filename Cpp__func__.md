[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [\_\_func\_\_](Cpp__func__.htm)
================================================

 

[\_\_func\_\_](Cpp__func__.htm) can be used to obtain the name of the
current [function](CppFunction.htm).

 

[\_\_func\_\_](Cpp__func__.htm) is -as far is I know- optionally
supplied by a [compiler](CppCompiler.htm), for example by
[G++](CppGpp.htm).

 

 

 

 

 

Example
-------

 

The example below shows how to display a [function](CppFunction.htm)
name.

 

-   [Download the Qt Creator project
    Cpp\_\_func\_\_ (zip)](Cpp__func__.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): Cpp\_\_func\_\_.pro
------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void ShowFunc() {   std::cout << __func__ << '\n'; }  int main() {   ShowFunc();    std::cout << __func__ << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` ShowFunc main`
  ------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
