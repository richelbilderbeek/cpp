



 

 

 

 

 

([C++](Cpp.htm)) [BoostUnitsExample13](CppBoostUnitsExample13.htm)
==================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 13](CppBoostUnitsExample13.htm) is a
[Boost.Units](CppBoostUnits.htm) example.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostUnitsExample13/CppBoostUnitsExample13.pro
--------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample13/main.cpp
---------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #include <boost/units/quantity.hpp> #include <boost/units/systems/si/length.hpp> #include <boost/units/systems/si/prefixes.hpp> #pragma GCC diagnostic pop  void OtherApproach();  int main() {   using boost::units::conversion_factor;   using boost::units::quantity;   using boost::units::si::length;   using boost::units::si::meter;   using boost::units::si::milli;   typedef quantity<length> Length;    //This value is read from file   const double x_in_mm = 1.0;    //Add units   const Length x(x_in_mm * milli * meter);    //const double x_again_in_m  = x / meter; //Works (in Boost 1.54)    //const double x_again_in_mm {   //  x / (milli * meter)   //}; //Why doesn't this compile (in Boost 1.54)?    //Thanks to Gavin Lambert for this solution   const double x_again_in_mm {     (x / meter) * conversion_factor(meter, milli * meter)   };    assert(x_in_mm == x_again_in_mm);    OtherApproach(); }  typedef boost::units::scaled_base_unit<   boost::units::si::meter_base_unit,   boost::units::scale<10, boost::units::static_rational<-3>> > millimeter_base_unit;  typedef boost::units::make_system<millimeter_base_unit>::type mm_system; typedef boost::units::unit<boost::units::length_dimension,mm_system> millimeter_unit; BOOST_UNITS_STATIC_CONSTANT(millimeters, millimeter_unit); typedef boost::units::quantity<millimeter_unit> LengthInMm;  void OtherApproach() {   using boost::units::si::meter;   using boost::units::si::milli;   typedef boost::units::quantity<boost::units::si::length> Length;    //This value is read from file   const double x_in_mm = 1.0;    //Add units   const Length x(x_in_mm * milli * meter);    //Thanks to Gavin Lambert for this solution   const double x_again_in_mm = LengthInMm(x) / millimeters;    assert(x_in_mm == x_again_in_mm); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
