



 

 

 

 

 

([C++](Cpp.htm)) [Compile-time Strategy Design Pattern example: DoIt](CppCtStrategyDesignPatternExampleDoIt.htm)
================================================================================================================

 

[Compile-time Strategy Design Pattern example:
DoIt](CppCtStrategyDesignPatternExampleDoIt.htm) is a compile-time
Strategy Design Pattern.

 

You can also employ a [run-time Strategy Design
Pattern](CppStrategyDesignPatternExampleDoIt.htm).

 

-   [Download the Qt Creator project
    'CppCtStrategyDesignPatternExampleDoIt' (zip)](CppCtStrategyDesignPatternExampleDoIt.htm)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppCtStrategyDesignPatternExampleDoIt.pro
----------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  ///A compile-time Strategy Design Pattern enum Policy { A, B };  template <Policy> struct Strategy {   static void DoIt(); };  template<> void Strategy<A>::DoIt() {   std::cout << "Do it the A way\n"; }  template<> void Strategy<B>::DoIt() {   std::cout << "Do it the B way\n"; }  int main() {   const Strategy<A> x; x.DoIt();   const Strategy<B> y; y.DoIt(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
