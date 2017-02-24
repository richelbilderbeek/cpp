

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [LengthInMm](CppLengthInMm.htm)
================================================

 

Technical facts
---------------

 

 

 

 

 

 

./CppLengthInMm/CppLengthInMm.pri
---------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` INCLUDEPATH += \     ../../Classes/CppLengthInMm  SOURCES += \     ../../Classes/CppLengthInMm/lengthinmm.cpp  HEADERS  += \     ../../Classes/CppLengthInMm/lengthinmm.h  OTHER_FILES += \     ../../Classes/CppLengthInMm/Licence.txt`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLengthInMm/lengthinmm.h
----------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef RIBI_LENGTHINMM_H #define RIBI_LENGTHINMM_H  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #include <boost/units/quantity.hpp> #include <boost/units/systems/si/length.hpp> #include <boost/units/systems/si/prefixes.hpp> #pragma GCC diagnostic pop  namespace ribi {  typedef boost::units::scaled_base_unit<   boost::units::si::meter_base_unit,   boost::units::scale<10, boost::units::static_rational<-3>> > millimeter_base_unit;  typedef boost::units::make_system<millimeter_base_unit>::type mm_system; typedef boost::units::unit<boost::units::length_dimension,mm_system> millimeter_unit; BOOST_UNITS_STATIC_CONSTANT(millimeters, millimeter_unit); typedef boost::units::quantity<millimeter_unit> LengthInMm;  } //~namespace ribi  #endif // RIBI_LENGTHINMM_H`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppLengthInMm/lengthinmm.cpp
------------------------------

 

  ----------------------------
  ` #include "lengthinmm.h"`
  ----------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
