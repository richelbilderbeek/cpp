

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Strategy Design Pattern Example: StrToDouble](CppStrategyDesignPatternExampleStrToDouble.htm)
===============================================================================================================

 

[Strategy Design Pattern Example:
StrToDouble](CppStrategyDesignPatternExampleStrToDouble.htm) is an
example of a [Strategy](CppDesignPatternStrategy.htm) [Design
Pattern](CppDesignPattern.htm).

 

You can convert this to a [compile-time Strategy Design
Pattern](CppCtStrategyDesignPattern.htm), for example to [compile-time
Strategy Design Pattern example:
StrToDouble](CppCtStrategyDesignPattern.htm).

 

-   [Download the Qt Creator project
    'CppStrategyDesignPatternExampleStrToDouble' (zip)](CppStrategyDesignPatternExampleStrToDouble.zip)

 

 

 

 

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppStrategy Design Pattern Example: StrToDouble.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/lexical_cast.hpp> #include <boost/shared_ptr.hpp> #include <string>  ///A Strategy Design Pattern struct StrToDoubleStrategy {   virtual double StrToDouble(const std::string& s) const = 0;   virtual ~StrToDoubleStrategy() {} };  struct StrToDoubleStrategyStl : public StrToDoubleStrategy {   double StrToDouble(const std::string& s) const   {     return std::atof(s.c_str());   } };  struct StrToDoubleStrategyBoost : public StrToDoubleStrategy {   double StrToDouble(const std::string& s) const   {     return boost::lexical_cast<double>(s);   } };  struct StrToDoubleStrategyCpp11 : public StrToDoubleStrategy {   double StrToDouble(const std::string& s) const   {     return std::stof(s);   } };  struct Converter {   Converter(const StrToDoubleStrategy * strategy)     : m_strategy(strategy)   {     assert(m_strategy);   }   double StrToDouble(const std::string& s) const   {     return m_strategy->StrToDouble(s);   }   private:   boost::shared_ptr<const StrToDoubleStrategy> m_strategy; };  #include <cassert>  int main() {    const Converter a(new StrToDoubleStrategyStl);   const Converter b(new StrToDoubleStrategyBoost);   const Converter c(new StrToDoubleStrategyCpp11);   assert( std::abs(12.34 - a.StrToDouble("12.34")) < 0.000001);   assert( std::abs(12.34 - b.StrToDouble("12.34")) < 0.000001);   assert( std::abs(12.34 - c.StrToDouble("12.34")) < 0.000001); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
