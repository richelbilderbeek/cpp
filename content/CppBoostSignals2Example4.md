



 

 

 

 

 

([C++](Cpp.htm)) [BoostSignals2Example4](CppBoostSignals2Example4.htm)
======================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Signals2 example 4](CppBoostSignals2Example4.htm) is a
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostSignals2Example4/CppBoostSignals2Example4.pro
------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri) SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostSignals2Example4/main.cpp
-----------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #include <boost/signals2.hpp> #pragma GCC diagnostic pop  void EmptySlot() {}  int main() {   boost::signals2::signal<void()> signal;    //A signal is connected to no slots   assert(signal.num_slots() == 0);   signal.connect(EmptySlot);    //Adding a slot increases num_slots   assert(signal.num_slots() == 1);   signal.connect(EmptySlot);    //Adding the same slot again increases num_slots   assert(signal.num_slots() == 2);    //Disconnect that slot removes both connections   signal.disconnect(EmptySlot);   assert(signal.num_slots() == 0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
