
 

 

 

 

 

([C++](Cpp.md)) [BoostUnitsBug](CppBoostUnitsBug.md)
======================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units bug](CppBoostUnitsBug.md) shows a
[Boost.Units](CppBoostUnits.md) [bug](CppBug.md). Feel free, however,
to call it an 'unexpected feature'.

 

-   [Download the Qt Creator project
    'CppUnitsBug' (zip)](CppBoostUnitsBug.md)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostUnitsBug/CppBoostUnitsBug.pro
--------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsBug/main.cpp
---------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/units/systems/si/prefixes.hpp>      //nano,milli,kilo #include <boost/units/systems/si/length.hpp>        //meter #include <boost/units/systems/si/io.hpp>            // << #pragma GCC diagnostic pop  int main() {   //Works as expected   {     const boost::units::quantity<boost::units::si::length> a(       1.23 * boost::units::si::meter);     const boost::units::quantity<boost::units::si::length> b(       1.23 * boost::units::si::milli * boost::units::si::meter);      const double x = a / boost::units::si::meter;     const double y = b / boost::units::si::meter;     assert(x != y && "A meter is not a millimeter");    }   //Works as expected   {     const boost::units::quantity<boost::units::si::length> a(       1.23 * boost::units::si::meter);     const boost::units::quantity<boost::units::si::length> b(       1.23 * boost::units::si::milli * boost::units::si::meter);      const double x = a.value();     const double y = b.value();     assert(x != y && "A meter is not a millimeter");    }   //FAILS   {     assert( (1.23 * boost::units::si::meter).value()       != (1.23 * boost::units::si::milli * boost::units::si::meter).value()       && "A meter is not a millimeter");   }   //FAILS   {     const double x = (1.23 * boost::units::si::meter).value();     const double y = (1.23 * boost::units::si::milli * boost::units::si::meter).value();     assert(x != y && "A meter is not a millimeter");   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

