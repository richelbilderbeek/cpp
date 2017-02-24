



 

 

 

 

 

([C++](Cpp.htm)) [BoostUnitsExample9](CppBoostUnitsExample9.htm)
================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 9: calculating pressure from a force and an
area](CppBoostUnitsExample9.htm) is a [Boost.Units](CppBoostUnits.htm)
example.

 

-   [Download the Qt Creator project
    'CppBoostUnitsExample9' (zip)](CppBoostUnitsExample9.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostUnitsExample9/CppBoostUnitExample9.pro
-----------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample9/main.cpp
--------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/units/io.hpp> #include <boost/units/systems/si.hpp> #include <boost/units/systems/si/prefixes.hpp> #pragma GCC diagnostic pop  int main() {   using boost::units::quantity;   using boost::units::si::area;   using boost::units::si::force;   using boost::units::si::kilo;   using boost::units::si::micro;   using boost::units::si::newton;   using boost::units::si::pascal;   using boost::units::si::pressure;   using boost::units::si::square_meter;    {     const quantity<pressure> p(2.0 * pascal);     const quantity<force> f(6.0 * newton);     const quantity<area> a(3.0 * square_meter);     assert(p == f/a);     assert(a == f/p);     assert(f == p*a);     assert(f == a*p);     std::cout       << "f: " << f << '\n'       << "p: " << p << '\n'       << "a: " << a << '\n';   }   {     const quantity<pressure> p(2.0 * micro * newton / (kilo * square_meter));     const quantity<force> f(6.0 * micro * newton);     const quantity<area> a(3.0 * kilo * square_meter);     assert(p == f/a);     assert(a == f/p);     assert(f == p*a);     assert(f == a*p);     std::cout       << "f: " << f << '\n'       << "p: " << p << '\n'       << "a: " << a << '\n';   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
