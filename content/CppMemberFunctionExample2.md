
 

 

 

 

 

([C++](Cpp.md)) [MemberFunctionExample2](CppMemberFunctionExample2.md)
========================================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[member function example 2: pointer to member
functions](CppMemberFunctionExample2.md) is a [member
function](CppMemberFunction.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppMemberFunctionExample2' (zip)](CppMemberFunctionExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMemberFunctionExample2/CppMemberFunctionExample2.pro
--------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++  unix {   QMAKE_CXXFLAGS += -Werror }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMemberFunctionExample2/main.cpp
------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void SayA() { std::cout << "A\n"; } void SayB() { std::cout << "B\n"; }  struct Person {   void SayBye() const noexcept { std::cout << "Bye\n"; }   void SayHello() const noexcept { std::cout << "Hello\n"; } };  int main() {   //Ordinay pointer to functions   {     typedef void (*Function)();     const Function a = SayA;     const Function b = SayB;     a();     b();     Function c = SayA;     c();     c = SayB;     c();   }   //Pointer to member functions   {     typedef void (Person::*MemberFunction)() const; //Note: do not add noexcept     const Person p;     const MemberFunction a = &Person::SayHello;     ((&p)->*a)();     const MemberFunction b = &Person::SayBye;     ((&p)->*b)();     MemberFunction c = &Person::SayHello;     ((&p)->*c)();     c = &Person::SayBye;     ((&p)->*c)();   } }  /* Screen output  A B A B Hello Bye Hello Bye Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

