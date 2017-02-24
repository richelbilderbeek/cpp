[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [MultipleInheritanceExample1](CppMultipleInheritanceExample1.htm)
==================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMultipleInheritanceExample1/CppMultipleInheritanceExample1.pro
------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMultipleInheritanceExample1/main.cpp
-----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <memory> #include <string>  //Abstract base class struct State {   virtual ~State() {}   virtual const std::string ToStr() const = 0; };  struct StateLoggedIn : public State {   const std::string ToStr() const { return "logged_in"; } };  struct StateNotLoggedIn : public State {   const std::string ToStr() const { return "not_logged_in"; } };  //Abstract base class struct Administrator : public State {   virtual ~Administrator() {} };  struct AdministratorLoggedIn : public Administrator, StateLoggedIn {   const std::string ToStr() const { return this->StateLoggedIn::ToStr(); } };  struct AdministratorNotLoggedIn : public Administrator, StateNotLoggedIn {   const std::string ToStr() const { return this->StateNotLoggedIn::ToStr(); } };   //Abstract base class struct Participant : public State {   virtual ~Participant() {} };  struct ParticipantLoggedIn : public Participant, StateLoggedIn {   const std::string ToStr() const { return this->StateLoggedIn::ToStr(); } };  struct ParticipantNotLoggedIn : public Participant, StateNotLoggedIn {   const std::string ToStr() const { return this->StateNotLoggedIn::ToStr(); } };  int main() {    std::shared_ptr<Administrator> a1(new AdministratorLoggedIn);   std::shared_ptr<Administrator> a2(new AdministratorNotLoggedIn);   std::shared_ptr<Participant> p1(new ParticipantLoggedIn);   std::shared_ptr<Participant> p2(new ParticipantNotLoggedIn);    assert(a1->ToStr() == p1->ToStr());   assert(a2->ToStr() == p2->ToStr());   std::cout << a1->ToStr() << '\n';   std::cout << a2->ToStr() << '\n'; }  /* Screen output:  logged_in not_logged_in Press <RETURN> to close this window...  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
