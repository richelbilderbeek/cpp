
 

 

 

 

 

([C++](Cpp.md)) [StdRandExample2](CppStdRandExample2.md)
==========================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdRandExample2/CppStdRandExample2.pro
------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui  CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRandExample2/main.cpp
-----------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream>  int main() {   for (int i=0; i!=10; ++i)   {     std::srand(0);     std::cout << std::rand() << std::endl;   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

