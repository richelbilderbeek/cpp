
 

 

 

 

 

([C++](Cpp.md)) [BoostUnitsExample14](CppBoostUnitsExample14.md)
==================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 14](CppBoostUnitsExample14.md) is a
[Boost.Units](CppBoostUnits.md) example.

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostUnitsExample14/CppBoostUnitsExample14.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample14/main.cpp
---------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/units/io.hpp> #include <boost/units/systems/si.hpp> #include <boost/units/systems/si/prefixes.hpp>  namespace boost {   namespace units {     typedef derived_dimension<length_base_dimension,-2>::type species_density_dimension;   } // namespace units } // namespace boost  namespace boost {   namespace units {     namespace si {       typedef unit<species_density_dimension,si::system> species_density;       BOOST_UNITS_STATIC_CONSTANT(species_per_square_meter,species_density);       BOOST_UNITS_STATIC_CONSTANT(species_per_square_meters,species_density);     } // namespace si   } // namespace units } //namespace boost  int main() {   using boost::units::quantity;   using boost::units::si::square_meter;   using boost::units::si::species_density;   using boost::units::si::species_per_square_meter;   using boost::units::si::time;   using boost::units::si::area;   typedef quantity<species_density> SpeciesDensity;   typedef quantity<area> Area;    const SpeciesDensity s(0.1 * species_per_square_meter);   const Area a(123.4 * square_meter);   const double n{s * a};    std::cout     << "Number of species = species_density * area\n"     << "n = d * a\n"     << "species_density = " << s << '\n'     << "area = " << a << '\n'     << "n = " << n << '\n'; }  /* Number of species = species_density * area n = d * a species_density = 0.1 m^-2 area = 123.4 m^2 n = 12.34 Press <RETURN> to close this window...  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
