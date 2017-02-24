
 

 

 

 

 

([C++](Cpp.md)) [HelloWorldQtCreatorUbuntu](CppHelloWorldQtCreatorUbuntu.md)
==============================================================================

 

[Hello World using Qt Creator under
Ubuntu](CppHelloWorldQtCreatorUbuntu.md) is [Hello
World](CppHelloWorld.md) program using the [Qt
Creator](CppQtCreator.md) [IDE](CppIde.md) under
[Ubuntu](CppUbuntu.md).

 

-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorUbuntu' (zip)](CppHelloWorldQtCreatorUbuntu.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppHelloWorldQtCreatorUbuntu/CppHelloWorldQtCreatorUbuntu.pro
--------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorUbuntu/main.cpp
---------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

 

