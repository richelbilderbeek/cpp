



 

 

 

 

 

([C++](Cpp.htm)) [HelloWorldQtCreatorUbuntu](CppHelloWorldQtCreatorUbuntu.htm)
==============================================================================

 

[Hello World using Qt Creator under
Ubuntu](CppHelloWorldQtCreatorUbuntu.htm) is [Hello
World](CppHelloWorld.htm) program using the [Qt
Creator](CppQtCreator.htm) [IDE](CppIde.htm) under
[Ubuntu](CppUbuntu.htm).

 

-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorUbuntu' (zip)](CppHelloWorldQtCreatorUbuntu.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppHelloWorldQtCreatorUbuntu/CppHelloWorldQtCreatorUbuntu.pro
--------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppHelloWorldQtCreatorUbuntu/main.cpp
---------------------------------------

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
