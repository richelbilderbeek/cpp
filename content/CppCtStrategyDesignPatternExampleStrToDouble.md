
 

 

 

 

 

([C++](Cpp.md)) [Compile-time Strategy Design Pattern example: StrToDouble](CppCtStrategyDesignPatternExampleStrToDouble.md)
==============================================================================================================================

 

[Compile-time Strategy Design Pattern example:
StrToDouble](CppCtStrategyDesignPatternExampleStrToDouble.md) is a
compile-time Strategy Design Pattern.

 

You can also employ a [run-time Strategy Design
Pattern](CppStrategyDesignPatternExampleStrToDouble.md).

 

-   [Download the Qt Creator project
    'CppCtStrategyDesignPatternExampleStrToDouble' (zip)](CppCtStrategyDesignPatternExampleStrToDouble.md)

 

 

 

 

 

 

 

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppCtStrategyDesignPatternExampleStrToDouble.pro
-----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/lexical_cast.hpp> #include <string>  ///A compile-time Strategy Design Pattern enum CtStrategyPolicy { Use_stl, Use_boost, Use_cpp11 };  template <CtStrategyPolicy> struct CtStrategy {   static double StrToDouble(const std::string& s); };  template<> double CtStrategy<Use_stl>::StrToDouble(const std::string& s) {   return std::atof(s.c_str()); }  template<> double CtStrategy<Use_boost>::StrToDouble(const std::string& s) {   return boost::lexical_cast<double>(s); }  template<> double CtStrategy<Use_cpp11>::StrToDouble(const std::string& s) {   return std::stof(s); }  #include <cassert>  int main() {   const CtStrategy<Use_stl> a;   const CtStrategy<Use_boost> b;   const CtStrategy<Use_cpp11> c;   assert( std::abs(12.34 - a.StrToDouble("12.34")) < 0.000001);   assert( std::abs(12.34 - b.StrToDouble("12.34")) < 0.000001);   assert( std::abs(12.34 - c.StrToDouble("12.34")) < 0.000001); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
