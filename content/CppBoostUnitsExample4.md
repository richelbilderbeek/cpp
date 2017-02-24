

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostUnitsExample4](CppBoostUnitsExample4.htm)
================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 4: creating a Length, Width and Area classes with
some typedefs](CppBoostUnitsExample4.htm) is a
[Boost.Units](CppBoostUnits.htm) example.

 

-   [Download the Qt Creator project
    'CppBoostUnitsExample4' (zip)](CppBoostUnitsExample4.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostUnitsExample4/CppBoostUnitsExample4.pro
------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample4/main.cpp
--------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <iomanip>  #include <boost/units/systems/si/prefixes.hpp> #include <boost/units/systems/si/length.hpp> #include <boost/units/systems/si/io.hpp> #include <boost/units/physical_dimensions/area.hpp>  struct Length {   typedef boost::units::quantity<boost::units::si::length> Length_type;   Length(const Length_type& length) : m_length(length)   {     assert(m_length >= Length_type(0));   }    const Length_type& GetLength() const { return m_length; }    private:   const Length_type m_length; };  std::ostream& operator<<(std::ostream& os, const Length& l) {   os << l.GetLength(); return os; }  struct Width {   typedef boost::units::quantity<boost::units::si::length> Length_type;   Width(const Length_type& width) : m_width(width)   {     assert(m_width >= Length_type(0));   }   const Length_type& GetWidth() const { return m_width; }   private:   const Length_type m_width; };  std::ostream& operator<<(std::ostream& os, const Width& w) {   os << w.GetWidth(); return os; }  struct Area {   typedef boost::units::quantity<boost::units::si::area> Area_type;   Area(const Length& length, const Width& width)     : m_area(length.GetLength() * width.GetWidth())   {     assert(length.GetLength() >= width.GetWidth() );   }   const Area_type& GetArea() const { return m_area; }   private:   const Area_type m_area; };  std::ostream& operator<<(std::ostream& os, const Area& a) {   os << a.GetArea(); return os; }  int main() {   using namespace boost::units;   using namespace boost::units::si;   const Length my_length(quantity<length>(1.23456789*micro*meter) );   const Width my_width(quantity<length>(2.3456789*nano*meter) );   const Area my_area(my_length,my_width);   std::cout     << std::setprecision(20)     << "Length: " << my_length << '\n'     << "Width: "  << my_width << '\n'     << "Area: "   << my_area << '\n'   ; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
