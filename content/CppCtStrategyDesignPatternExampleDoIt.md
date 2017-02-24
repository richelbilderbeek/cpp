
 

 

 

 

 

([C++](Cpp.md)) [Compile-time Strategy Design Pattern example: DoIt](CppCtStrategyDesignPatternExampleDoIt.md)
================================================================================================================

 

[Compile-time Strategy Design Pattern example:
DoIt](CppCtStrategyDesignPatternExampleDoIt.md) is a compile-time
Strategy Design Pattern.

 

You can also employ a [run-time Strategy Design
Pattern](CppStrategyDesignPatternExampleDoIt.md).

 

-   [Download the Qt Creator project
    'CppCtStrategyDesignPatternExampleDoIt' (zip)](CppCtStrategyDesignPatternExampleDoIt.md)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppCtStrategyDesignPatternExampleDoIt.pro
----------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  ///A compile-time Strategy Design Pattern enum Policy { A, B };  template <Policy> struct Strategy {   static void DoIt(); };  template<> void Strategy<A>::DoIt() {   std::cout << "Do it the A way\n"; }  template<> void Strategy<B>::DoIt() {   std::cout << "Do it the B way\n"; }  int main() {   const Strategy<A> x; x.DoIt();   const Strategy<B> y; y.DoIt(); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

