



 

 

 

 

 

([C++](Cpp.htm)) [GetLastModifiedTime](CppGetLastModifiedTime.htm)
==================================================================

 

[GetLastModifiedTime](CppGetLastModifiedTime.htm) is a
[time](CppTime.htm) [code snippet](CppCodeSnippets.htm) to obtain the
last time when a file was modified.

 

-   [Download the Qt Creator project
    'GetLastModifiedTime' (zip)](CppGetLastModifiedTime.zip)

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): [GUI](CppGui.htm) application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40
-   [Qt](CppQt.htm): version 4.7.0 (32 bit)

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-28T13:57:09 # #------------------------------------------------- QT       += core QT       -= gui LIBS += -L/usr/lib -lboost_system LIBS += -L/usr/lib -lboost_filesystem TARGET = CppGetLastWriteTime CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <ctime> #include <iostream> #include <boost/filesystem.hpp> #include <boost/lexical_cast.hpp>  ///TimeToStr converts std::time_t to std::string. ///From http://www.richelbilderbeek.nl/CppTimeToStr.htm const std::string TimeToStr(const std::time_t& time) {   return std::ctime( &time); }  ///GetLastModifiedTime returns the last time when a file is modified. ///From http://www.richelbilderbeek.nl/CppGetLastModifiedTime.htm const std::time_t GetLastModifiedTime(const std::string& filename) {   assert(boost::filesystem::exists(filename));   return boost::filesystem::last_write_time(filename); }  int main(int, char* argv[]) {   const std::string filename = argv[0];   const std::string s = TimeToStr(GetLastModifiedTime(filename));   std::cout << s << '\n';  }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------------------------
  ` Tue Sep 28 14:20:38 2010`
  -----------------------------

 

 

 

 

 





 



