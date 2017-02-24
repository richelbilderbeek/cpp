
 

 

 

 

 

([C++](Cpp.md)) [MemberFunctionExample1](CppMemberFunctionExample1.md)
========================================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[member function example 1: Hello World](CppMemberFunctionExample1.md)
is a [member function](CppMemberFunction.md) [example](CppExample.md).

 

The class 'HelloWorld' has a single [const member
function](CppConstMemberFunction.md) called 'SayHelloWorld'. It is
called in [main](CppMain.md), producing the same output as a [Hello
World program](CppHelloWorld.md).

 

-   [Download the Qt Creator project
    'CppMemberFunctionExample1' (zip)](CppMemberFunctionExample1.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMemberFunctionExample1/CppMemberFunctionExample1.pro
--------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemberFunctionExample1/main.cpp
------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct HelloWorld {   void SayHelloWorld() const noexcept { std::cout << "Hello World\n"; } };  int main() {   const HelloWorld h;   h.SayHelloWorld(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

