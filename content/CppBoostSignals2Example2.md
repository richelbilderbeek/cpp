



 

 

 

 

 

([C++](Cpp.htm)) [BoostSignals2Example2](CppBoostSignals2Example2.htm)
======================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Signals2 example 2: emitting this](CppBoostSignals2Example2.htm)
is a [Boost.Signals2](CppBoostSignals2.htm) example that shows how to
emit [this](CppThis.htm).

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

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostSignals2Example2/CppBoostSignals2Example2.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example2/main.cpp
-----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/bind.hpp> #include <boost/lambda/lambda.hpp> #include <boost/signals2.hpp> #pragma GCC diagnostic pop  struct Thing {   Thing(const int id) : m_signal{}, m_id(id) {}   boost::signals2::signal<void (const Thing*)> m_signal;   const int m_id;   void EmitMe() const { m_signal(this); } };  struct Manager {   Manager(): m_v{}   {     for (int i=0; i!=5; ++i)     {       boost::shared_ptr<Thing> t(new Thing(i));       //Do not forget the placeholder!       t->m_signal.connect(boost::bind(&Manager::OnSignal,this, boost::lambda::_1));       m_v.push_back(t);     }   }   void EmitRandom()   {     const int i = std::rand() % 5;     m_v[i]->EmitMe();   }    private:    std::vector<boost::shared_ptr<Thing> > m_v;    void OnSignal(const Thing* thing)   {     std::cout << thing->m_id << '\n';   } };  int main() {   Manager m;   for (int i=0; i!=10; ++i) m.EmitRandom(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
