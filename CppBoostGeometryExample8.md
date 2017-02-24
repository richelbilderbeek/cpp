[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostGeometryExample8](CppBoostGeometryExample8.htm)
======================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Geometry example 8: Convert points to a polygon and
back](CppBoostGeometryExample8.htm) is a
[Boost.Geometry](CppBoostGeometry.htm) [example](CppExample.htm).

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostGeometryExample8/CppBoostGeometryExample8.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../ConsoleApplication.pri) {   include(../../ConsoleApplication.pri) } !exists(../../ConsoleApplication.pri) {   QT += core   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostGeometryExample8/main.cpp
-----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <vector>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #include <boost/geometry.hpp> #include <boost/geometry/geometries/point_xy.hpp> #include <boost/geometry/geometries/polygon.hpp> #pragma GCC diagnostic pop  int main() {   typedef boost::geometry::model::d2::point_xy<double> Point;   typedef boost::geometry::model::polygon<Point> Polygon;    //Obtain the points   const std::vector<Point> points {       {15.9835,631.923},       {8.24075,628.579},       {8.24075,679.58 },       {15.9835,682.926}   };    //Create a polygon from these points   Polygon polygon;   boost::geometry::append(polygon, points);   assert(boost::geometry::num_points(polygon) == 4);    //Create the points back again from that polygon   const std::vector<Point> points_again = polygon.outer();    //Initial and re-created points must be equal   assert(     std::equal(points.begin(),points.end(),points_again.begin(),       [](const boost::geometry::model::d2::point_xy<double>& a, const boost::geometry::model::d2::point_xy<double>& b)       {         return boost::geometry::equals(a,b);       }     )   ); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
