



 

 

 

 

 

([C++](Cpp.md)) [Boost signal example 2: emitting this](CppBoostSignalExample2.md)
====================================================================================

 

This [Boost signal](CppBoostSignal.md) example shows how to emit
[this](CppThis.md).

 

-   [Download the Qt Creator project
    'CppBoostSignalExample2' (zip)](CppBoostSignalExample2.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 11.04 (natty)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.5.2

[Libraries](CppLibrary.md) used:

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.42
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.5.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppBoostSignalExample2.pro
-------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-08-12T10:26:40 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppBoostSignalExample2 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/bind.hpp> #include <boost/lambda/lambda.hpp> #include <boost/signals2.hpp>  struct Thing {   Thing(const int id) : m_id(id) {}   boost::signals2::signal<void (const Thing*)> m_signal;   const int m_id;   void EmitMe() const { m_signal(this); } };  struct Manager {   Manager()   {     for (int i=0; i!=5; ++i)     {       boost::shared_ptr<Thing> t(new Thing(i));       //Do not forget the placeholder!       t->m_signal.connect(boost::bind(&Manager::OnSignal,this, boost::lambda::_1));       m_v.push_back(t);     }   }   void EmitRandom()   {     const int i = std::rand() % 5;     m_v[i]->EmitMe();   }    private:    std::vector<boost::shared_ptr<Thing> > m_v;    void OnSignal(const Thing* thing)   {     std::cout << thing->m_id << '\n';   } };  int main() {   Manager m;   for (int i=0; i!=10; ++i) m.EmitRandom(); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



