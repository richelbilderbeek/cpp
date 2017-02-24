

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdMinmax\_elementExample2](CppStdMinmax_elementExample2.htm)
===============================================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[std::minmax\_element example 2](CppStdMinmax_elementExample2.htm) is an
[example](CppExample.htm) of the
[std::minmax\_element](CppStdMinmax_element.htm)
[algorithm](CppAlgorithm.htm).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdMinmax\_elementExample2/CppStdMinmax\_elementExample2.pro
----------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdMinmax\_elementExample2/main.cpp
----------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <map>  struct Id {   Id(const int id) : m_id(id) {}   int m_id; };  bool operator<(const Id& lhs, const Id& rhs) { return lhs.m_id < rhs.m_id; }  const std::pair<Id,Id> GetBestAndWorstIdStl(const std::map<Id,double>& m) {   const std::map<Id,double>::const_iterator end = m.end();   std::map<Id,double>::const_iterator min = m.begin();   std::map<Id,double>::const_iterator max = m.begin();   for (std::map<Id,double>::const_iterator i = m.begin(); i!=end; ++i)   {     if (i->second < min->second) min = i;     if (i->second >= max->second) max = i;   }   return std::make_pair(min->first,max->first); }  const std::pair<Id,Id> GetBestAndWorstIdCpp11(const std::map<Id,double>& m) {   const auto p = std::minmax_element(m.begin(),m.end(),     [](const std::pair<const Id,double>& lhs,const std::pair<const Id,double>& rhs)     {       return rhs.second > lhs.second;     }   );   return std::make_pair((*p.first).first,(*p.second).first); }  int main() {   const std::map<Id,double> m     =     {       std::make_pair(Id(0), 0.0),       std::make_pair(Id(1), 1.0),       std::make_pair(Id(2), 0.0),       std::make_pair(Id(3),-1.0),       std::make_pair(Id(4), 0.0)     };    const auto p1 = GetBestAndWorstIdStl(m);   assert(p1.first.m_id == 3);   assert(p1.second.m_id == 1);    const auto p2 = GetBestAndWorstIdCpp0x(m);   assert(p2.first.m_id == 3);   assert(p2.second.m_id == 1);  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
