[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [\#undef](CppUndef.htm)
========================================

 

[\#undef](CppUndef.htm) is a [preprocessor](CppPreprocessor.htm)
directive to undo a [\#define](CppDefine.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #define MY_DEFINE  int main() {   #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif    #undef MY_DEFINE    #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------------
  ` MY_DEFINE is #defined MY_DEFINE is not #define`
  ---------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppUndef.pro
-----------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #define MY_DEFINE  int main() {   #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif    #undef MY_DEFINE    #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppUndef' (zip)](CppUndef.htm)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
