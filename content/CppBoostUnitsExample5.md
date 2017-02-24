



 

 

 

 

 

([C++](Cpp.md)) [BoostUnitsExample5](CppBoostUnitsExample5.md)
================================================================

 

![Cpp98](PicCpp98.png)![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[Boost.Units example 5: averaging multiple
lengths](CppBoostUnitsExample5.md) is a
[Boost.Units](CppBoostUnits.md) example.

 

-   [Download the Qt Creator project
    'CppBoostUnitsExample5' (zip)](CppBoostUnitsExample5.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostUnitsExample5/CppBoostUnitsExample5.pro
------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostUnitsExample5/main.cpp
--------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <iomanip> #include <numeric> #include <vector>  #include <boost/units/systems/si/prefixes.hpp> #include <boost/units/systems/si/length.hpp> #include <boost/units/systems/si/io.hpp> #include <boost/units/physical_dimensions/area.hpp>  struct Distance {   typedef boost::units::quantity<boost::units::si::length> Distance_type;   Distance(const Distance_type& distance) : m_distance(distance)   {     assert(m_distance >= Distance_type(0));   }    const Distance_type& GetDistance() const { return m_distance; }    private:   Distance_type m_distance; };  const Distance operator+(const Distance& lhs, const Distance& rhs) {   return Distance( lhs.GetDistance() + rhs.GetDistance() ); }  const Distance operator/(const Distance& numerator, const double denominator) {   return Distance(numerator.GetDistance() / denominator); }  std::ostream& operator<<(std::ostream& os, const Distance& l) {   os << l.GetDistance(); return os; }  const Distance GetAverageDistance(const std::vector<Distance>& v) {   return std::accumulate(v.begin(),v.end(),Distance(Distance::Distance_type(0.0 * boost::units::si::meter)))     / static_cast<double>(v.size()); }  int main() {   using namespace boost::units;   using namespace boost::units::si;   const std::vector<Distance> v     =     {       Distance(Distance::Distance_type(2.34 * micro * meter)),       Distance(Distance::Distance_type(3.00 * milli * meter)),       Distance(Distance::Distance_type(5.00         * meter)),       Distance(Distance::Distance_type(7.00 * kilo  * meter))     };   const Distance distance = GetAverageDistance(v);    std::cout << std::setprecision(20) << "Distances:\n";   std::copy(v.begin(),v.end(),std::ostream_iterator<Distance>(std::cout,"\n"));   std::cout << "Average distance: " << distance << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
