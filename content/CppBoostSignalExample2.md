

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Boost signal example 2: emitting this](CppBoostSignalExample2.htm)
====================================================================================

 

This [Boost signal](CppBoostSignal.htm) example shows how to emit
[this](CppThis.htm).

 

-   [Download the Qt Creator project
    'CppBoostSignalExample2' (zip)](CppBoostSignalExample2.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 11.04 (natty)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.1

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.5.2

[Libraries](CppLibrary.htm) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.42
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppBoostSignalExample2.pro
-------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-08-12T10:26:40 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppBoostSignalExample2 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/bind.hpp> #include <boost/lambda/lambda.hpp> #include <boost/signals2.hpp>  struct Thing {   Thing(const int id) : m_id(id) {}   boost::signals2::signal<void (const Thing*)> m_signal;   const int m_id;   void EmitMe() const { m_signal(this); } };  struct Manager {   Manager()   {     for (int i=0; i!=5; ++i)     {       boost::shared_ptr<Thing> t(new Thing(i));       //Do not forget the placeholder!       t->m_signal.connect(boost::bind(&Manager::OnSignal,this, boost::lambda::_1));       m_v.push_back(t);     }   }   void EmitRandom()   {     const int i = std::rand() % 5;     m_v[i]->EmitMe();   }    private:    std::vector<boost::shared_ptr<Thing> > m_v;    void OnSignal(const Thing* thing)   {     std::cout << thing->m_id << '\n';   } };  int main() {   Manager m;   for (int i=0; i!=10; ++i) m.EmitRandom(); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
