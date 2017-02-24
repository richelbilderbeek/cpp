
 

 

 

 

 

([C++](Cpp.md)) [Wait](CppWait.md)
====================================

 

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

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppWait/CppWait.pro
--------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppWait/main.cpp
------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <chrono>  void WaitStl(const double n_secs) noexcept {   const std::chrono::system_clock::time_point t = std::chrono::system_clock::now();   while (1)   {     const std::chrono::system_clock::duration d = std::chrono::system_clock::now() - t;     const long long int n_msecs_passed{std::chrono::duration_cast<std::chrono::milliseconds>(d).count()};     const double secs_passed{static_cast<double>(n_msecs_passed) / 1000.0};     if (secs_passed > n_secs) return;   } }   #include <boost/timer.hpp>  void WaitBoost(const double n_secs) noexcept {   boost::timer t;   while (t.elapsed() < n_secs) {} }  #include <iostream>  int main() {   for (int i=0; i!=10; ++i)   {     std::cout << "Waiting 100 msecs using STL" << std::endl;     WaitStl(0.1);   }   for (int i=0; i!=10; ++i)   {     std::cout << "Waiting 100 msecs using Boost" << std::endl;     WaitBoost(0.1);   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
