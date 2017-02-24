

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostUnitsBug](CppBoostUnitsBug.htm)
======================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units bug](CppBoostUnitsBug.htm) shows a
[Boost.Units](CppBoostUnits.htm) [bug](CppBug.htm). Feel free, however,
to call it an 'unexpected feature'.

 

-   [Download the Qt Creator project
    'CppUnitsBug' (zip)](CppBoostUnitsBug.htm)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostUnitsBug/CppBoostUnitsBug.pro
--------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsBug/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/units/systems/si/prefixes.hpp>      //nano,milli,kilo #include <boost/units/systems/si/length.hpp>        //meter #include <boost/units/systems/si/io.hpp>            // << #pragma GCC diagnostic pop  int main() {   //Works as expected   {     const boost::units::quantity<boost::units::si::length> a(       1.23 * boost::units::si::meter);     const boost::units::quantity<boost::units::si::length> b(       1.23 * boost::units::si::milli * boost::units::si::meter);      const double x = a / boost::units::si::meter;     const double y = b / boost::units::si::meter;     assert(x != y && "A meter is not a millimeter");    }   //Works as expected   {     const boost::units::quantity<boost::units::si::length> a(       1.23 * boost::units::si::meter);     const boost::units::quantity<boost::units::si::length> b(       1.23 * boost::units::si::milli * boost::units::si::meter);      const double x = a.value();     const double y = b.value();     assert(x != y && "A meter is not a millimeter");    }   //FAILS   {     assert( (1.23 * boost::units::si::meter).value()       != (1.23 * boost::units::si::milli * boost::units::si::meter).value()       && "A meter is not a millimeter");   }   //FAILS   {     const double x = (1.23 * boost::units::si::meter).value();     const double y = (1.23 * boost::units::si::milli * boost::units::si::meter).value();     assert(x != y && "A meter is not a millimeter");   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
