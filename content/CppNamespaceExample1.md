
 

 

 

 

 

([C++](Cpp.md)) [NamespaceExample1](CppNamespaceExample1.md)
==============================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[namespace example 1: scopes](CppNamespaceExample1.md) is a
[namespace](CppNamespace.md) [example](CppExample.md).

In the example, three versions of the function SayHello reside in
different [namespaces](CppNamespace.md): loud, soft and the
[global](CppGlobal.md) [namespace](CppNamespace.md).

 

-   [Download the Qt Creator project
    'CppNamespaceExample1' (zip)](CppNamespaceExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppNamespaceExample1/CppNamespaceExample1.pro
----------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppNamespaceExample1/main.cpp
-------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  namespace loud {   void SayHello() { std::cout << "HELLO WORLD!\n"; } }  //SayHello in the global namespace, ::SayHello() void SayHello() { std::cout << "Hello world\n"; }  namespace soft {   void SayHello() { std::cout << "H.e.l.l.o w.o.r.l.d...\n"; } }  int main() {   loud::SayHello();     //Call loud::SayHello   ::SayHello();         //Explicity call SayHello from global namespace   SayHello();           //Call the SayHello used, which is ::SayHello by default   using soft::SayHello; //Start using soft::SayHello   SayHello();           //Call the SayHello used, which is soft::SayHello now   soft::SayHello();     //Call soft::SayHello }  /* Screen output:  HELLO WORLD! Hello world Hello world H.e.l.l.o w.o.r.l.d... H.e.l.l.o w.o.r.l.d... Press <RETURN> to close this window...  */`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

