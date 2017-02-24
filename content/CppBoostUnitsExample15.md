



 

 

 

 

 

([C++](Cpp.md)) [BoostUnitsExample15](CppBoostUnitsExample15.md)
==================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 15](CppBoostUnitsExample15.md) is a
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostUnitsExample15/CppBoostUnitsExample15.pro
--------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample15/main.cpp
---------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #include <boost/units/io.hpp> #include <boost/units/systems/si.hpp> #include <boost/units/systems/si/prefixes.hpp>  namespace boost {   namespace units {     typedef derived_dimension<boost::units::amount_base_dimension,1>::type sulfide_molecule_amount_dimension;   } // namespace units } // namespace boost   namespace boost {   namespace units {     namespace si {       typedef unit<sulfide_molecule_amount_dimension,si::system> sulfide_molecule_amount;       BOOST_UNITS_STATIC_CONSTANT(sulfide_molecules_mol,sulfide_molecule_amount);     } // namespace si   } // namespace units } //namespace boost  int main() {   using boost::units::quantity;   using boost::units::si::sulfide_molecule_amount;   using boost::units::si::sulfide_molecules_mol;   typedef quantity<sulfide_molecule_amount> SulfideMoleculeAmount;    const SulfideMoleculeAmount s{1.0 * sulfide_molecules_mol};    std::cout     << "Number of sulfide molecules: " << s << '\n'; }  /*  Number of sulfide molecules: 1 mol Press <RETURN> to close this window...  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
