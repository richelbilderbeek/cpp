

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [NamespaceExample1](CppNamespaceExample1.htm)
==============================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[namespace example 1: scopes](CppNamespaceExample1.htm) is a
[namespace](CppNamespace.htm) [example](CppExample.htm).

In the example, three versions of the function SayHello reside in
different [namespaces](CppNamespace.htm): loud, soft and the
[global](CppGlobal.htm) [namespace](CppNamespace.htm).

 

-   [Download the Qt Creator project
    'CppNamespaceExample1' (zip)](CppNamespaceExample1.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppNamespaceExample1/CppNamespaceExample1.pro
----------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppNamespaceExample1/main.cpp
-------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  namespace loud {   void SayHello() { std::cout << "HELLO WORLD!\n"; } }  //SayHello in the global namespace, ::SayHello() void SayHello() { std::cout << "Hello world\n"; }  namespace soft {   void SayHello() { std::cout << "H.e.l.l.o w.o.r.l.d...\n"; } }  int main() {   loud::SayHello();     //Call loud::SayHello   ::SayHello();         //Explicity call SayHello from global namespace   SayHello();           //Call the SayHello used, which is ::SayHello by default   using soft::SayHello; //Start using soft::SayHello   SayHello();           //Call the SayHello used, which is soft::SayHello now   soft::SayHello();     //Call soft::SayHello }  /* Screen output:  HELLO WORLD! Hello world Hello world H.e.l.l.o w.o.r.l.d... H.e.l.l.o w.o.r.l.d... Press <RETURN> to close this window...  */`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
