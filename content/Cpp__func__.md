
 

 

 

 

 

([C++](Cpp.md)) [\_\_func\_\_](Cpp__func__.md)
================================================

 

[\_\_func\_\_](Cpp__func__.md) can be used to obtain the name of the
current [function](CppFunction.md).

 

[\_\_func\_\_](Cpp__func__.md) is -as far is I know- optionally
supplied by a [compiler](CppCompiler.md), for example by
[G++](CppGpp.md).

 

 

 

 

 

Example
-------

 

The example below shows how to display a [function](CppFunction.md)
name.

 

-   [Download the Qt Creator project
    Cpp\_\_func\_\_ (zip)](Cpp__func__.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): Cpp\_\_func\_\_.pro
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

 

 

 

 

 

 

