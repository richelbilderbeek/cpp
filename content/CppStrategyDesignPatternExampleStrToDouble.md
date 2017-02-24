
 

 

 

 

 

([C++](Cpp.md)) [Strategy Design Pattern Example: StrToDouble](CppStrategyDesignPatternExampleStrToDouble.md)
===============================================================================================================

 

[Strategy Design Pattern Example:
StrToDouble](CppStrategyDesignPatternExampleStrToDouble.md) is an
example of a [Strategy](CppDesignPatternStrategy.md) [Design
Pattern](CppDesignPattern.md).

 

You can convert this to a [compile-time Strategy Design
Pattern](CppCtStrategyDesignPattern.md), for example to [compile-time
Strategy Design Pattern example:
StrToDouble](CppCtStrategyDesignPattern.md).

 

-   [Download the Qt Creator project
    'CppStrategyDesignPatternExampleStrToDouble' (zip)](CppStrategyDesignPatternExampleStrToDouble.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppStrategy Design Pattern Example: StrToDouble.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/lexical_cast.hpp> #include <boost/shared_ptr.hpp> #include <string>  ///A Strategy Design Pattern struct StrToDoubleStrategy {   virtual double StrToDouble(const std::string& s) const = 0;   virtual ~StrToDoubleStrategy() {} };  struct StrToDoubleStrategyStl : public StrToDoubleStrategy {   double StrToDouble(const std::string& s) const   {     return std::atof(s.c_str());   } };  struct StrToDoubleStrategyBoost : public StrToDoubleStrategy {   double StrToDouble(const std::string& s) const   {     return boost::lexical_cast<double>(s);   } };  struct StrToDoubleStrategyCpp11 : public StrToDoubleStrategy {   double StrToDouble(const std::string& s) const   {     return std::stof(s);   } };  struct Converter {   Converter(const StrToDoubleStrategy * strategy)     : m_strategy(strategy)   {     assert(m_strategy);   }   double StrToDouble(const std::string& s) const   {     return m_strategy->StrToDouble(s);   }   private:   boost::shared_ptr<const StrToDoubleStrategy> m_strategy; };  #include <cassert>  int main() {    const Converter a(new StrToDoubleStrategyStl);   const Converter b(new StrToDoubleStrategyBoost);   const Converter c(new StrToDoubleStrategyCpp11);   assert( std::abs(12.34 - a.StrToDouble("12.34")) < 0.000001);   assert( std::abs(12.34 - b.StrToDouble("12.34")) < 0.000001);   assert( std::abs(12.34 - c.StrToDouble("12.34")) < 0.000001); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

