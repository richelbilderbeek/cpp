



 

 

 

 

 

([C++](Cpp.htm)) [BoostSignals2Example3](CppBoostSignals2Example3.htm)
======================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Signals2 example 3](CppBoostSignals2Example3.htm) is a
[Boost.Signals2](CppBoostSignals2.htm) example.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostSignals2Example3/CppBoostSignals2Example3.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example3/main.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/bind.hpp> #include <boost/lambda/lambda.hpp> #include <boost/signals2.hpp> #pragma GCC diagnostic pop  //NoIdea is a class that can ask for an answer, but //has no idea what this answer is. It relies on a //Boost.Units2 signal its return value struct NoIdea {   NoIdea() : m_signal{} {}   void Ask()   {     if (m_signal())     {       std::cout << *m_signal() << '\n';     }     else     {       std::cout << "[No one answers]" << '\n';     }   }   boost::signals2::signal<std::string()> m_signal; };  const std::string SayX() { return "The answer"; }  int main() {   NoIdea x;   x.Ask();   x.m_signal.connect(&SayX);   x.Ask(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
