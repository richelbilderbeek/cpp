[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostGeometryExample3](CppBoostGeometryExample3.htm)
======================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Geometry example 3: IsConvex: determine if a 2D polygon is convex
or concave](CppBoostGeometryExample3.htm) is a
[Boost.Geometry](CppBoostGeometry.htm) [example](CppExample.htm).

 

IsConvex is maintained in [CppGeometry](CppGeometry.htm). See
[CppGeometry](CppGeometry.htm) for the heavily used, debugged and tested
version of IsConvex

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostGeometryExample3/CppBoostGeometryExample3.pro
------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../ConsoleApplication.pri) {   include(../../ConsoleApplication.pri) } !exists(../../ConsoleApplication.pri) {   QT += core   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostGeometryExample3/main.cpp
-----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #include <boost/geometry.hpp> #include <boost/geometry/geometries/point_xy.hpp> #pragma GCC diagnostic pop  bool IsConvex(boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>> polygon) {   boost::geometry::correct(polygon);   boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>> hull;   boost::geometry::convex_hull(polygon, hull);   return boost::geometry::area(hull) == boost::geometry::area(polygon); }  int main() {   typedef boost::geometry::model::d2::point_xy<double> Coordinat2D;   /* Polygons used:    0123456789012    0123456789012  0+------------   0+------------  1|               1|  2| A---------B   2| A---------B  3| E        /    3|  \   D   /  4|  \      /     4|   \ / \ /  5|   D----C      5|    E   C   |                |       Convex           Concave    */    //Convex shape   {     const std::vector<Coordinat2D> points {       { 2.0, 2.0}, //A       {12.0, 2.0}, //B       { 9.0, 5.0}, //C       { 4.0, 5.0}, //D       { 2.0, 3.0}  //E     };      boost::geometry::model::polygon<Coordinat2D> polygon;     boost::geometry::append(polygon, points);     assert(IsConvex(polygon));   }   //Concave shape   {     const std::vector<Coordinat2D> points {       { 2.0, 2.0}, //A       {12.0, 2.0}, //B       { 9.0, 5.0}, //C       { 7.0, 3.0}, //D       { 5.0, 5.0}  //E     };      boost::geometry::model::polygon<Coordinat2D> polygon;     boost::geometry::append(polygon, points);     assert(!IsConvex(polygon));   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
