
 

 

 

 

 

([C++](Cpp.md)) [\#undef](CppUndef.md)
========================================

 

[\#undef](CppUndef.md) is a [preprocessor](CppPreprocessor.md)
directive to undo a [\#define](CppDefine.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #define MY_DEFINE  int main() {   #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif    #undef MY_DEFINE    #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------------
  ` MY_DEFINE is #defined MY_DEFINE is not #define`
  ---------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppUndef.pro
-----------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #define MY_DEFINE  int main() {   #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif    #undef MY_DEFINE    #ifdef MY_DEFINE   std::cout << "MY_DEFINE is #defined\n";   #else   std::cout << "MY_DEFINE is not #defined\n";   #endif }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project 'CppUndef' (zip)](CppUndef.md)

 

 

 

 

 

 



