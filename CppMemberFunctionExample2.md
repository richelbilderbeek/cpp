[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [MemberFunctionExample2](CppMemberFunctionExample2.htm)
========================================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[member function example 2: pointer to member
functions](CppMemberFunctionExample2.htm) is a [member
function](CppMemberFunction.htm) [example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppMemberFunctionExample2' (zip)](CppMemberFunctionExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMemberFunctionExample2/CppMemberFunctionExample2.pro
--------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemberFunctionExample2/main.cpp
------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void SayA() { std::cout << "A\n"; } void SayB() { std::cout << "B\n"; }  struct Person {   void SayBye() const noexcept { std::cout << "Bye\n"; }   void SayHello() const noexcept { std::cout << "Hello\n"; } };  int main() {   //Ordinay pointer to functions   {     typedef void (*Function)();     const Function a = SayA;     const Function b = SayB;     a();     b();     Function c = SayA;     c();     c = SayB;     c();   }   //Pointer to member functions   {     typedef void (Person::*MemberFunction)() const; //Note: do not add noexcept     const Person p;     const MemberFunction a = &Person::SayHello;     ((&p)->*a)();     const MemberFunction b = &Person::SayBye;     ((&p)->*b)();     MemberFunction c = &Person::SayHello;     ((&p)->*c)();     c = &Person::SayBye;     ((&p)->*c)();   } }  /* Screen output  A B A B Hello Bye Hello Bye Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
