# ([C++](Cpp.md)) [BoostGeometryExample13](CppBoostGeometryExample13.md)

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Geometry example 13: Convert a polygon to linestring and
back](CppBoostGeometryExample13.md) is a
[Boost.Geometry](CppBoostGeometry.md) [example](CppExample.md).

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostGeometryExample13/CppBoostGeometryExample13.pro
--------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../ConsoleApplication.pri) {   include(../../ConsoleApplication.pri) } !exists(../../ConsoleApplication.pri) {   QT += core   QT += gui   greaterThan(QT_MAJOR_VERSION, 4): QT += widgets   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  exists(../../Libraries/Boost.pri) {   include(../../Libraries/Boost.pri) } !exists(../../Libraries/Boost.pri) {   win32 {     INCLUDEPATH += \       ../../Libraries/boost_1_55_0   } }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostGeometryExample13/main.cpp
------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <vector>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #pragma GCC diagnostic ignored "-Wunused-variable" #include <boost/geometry/algorithms/equals.hpp> #include <boost/geometry/geometries/point_xy.hpp> #include <boost/geometry/geometries/polygon.hpp> #include <boost/geometry/geometries/linestring.hpp> #include <boost/geometry/io/wkt/read.hpp> #pragma GCC diagnostic pop  //Convert a polygon to linestring and back int main() {   typedef boost::geometry::model::d2::point_xy<double> Point;   typedef boost::geometry::model::linestring<Point> Linestring;   typedef boost::geometry::model::polygon<Point> Polygon;    //Create polygon   Polygon polygon;   boost::geometry::read_wkt(     "POLYGON((1.0 1.0, 1.0 3.0, 3.0 3.0, 3.0 1.0))",     polygon   );    //Convert polygon to linestring   Linestring linestring;   boost::geometry::append(linestring, polygon.outer());    //Convert linestring to new polygon   Polygon new_polygon;   boost::geometry::append(new_polygon, linestring);    //Check that the resulting polygon equals the original    //Instead of using this syntax:   //  assert(polygon == new_polygon);   //operator== needs to be defined, which is done by a lambda function   assert(     std::equal(       polygon.outer().begin(),polygon.outer().end(),       new_polygon.outer().begin(),       [](const Point& a, const Point& b)       {         return boost::geometry::equals(a,b);       }     )   ); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

