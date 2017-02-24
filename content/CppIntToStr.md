



 

 

 

 

 

([C++](Cpp.htm)) [IntToStr](CppIntToStr.htm)
============================================

 

[IntToStr](CppIntToStr.htm) is a [code snippet](CppCodeSnippets.htm) to
[convert](CppConvert.htm) an [int](CppInt.htm) to
[std::string](CppStdString.htm). To [convert](CppConvert.htm) a
[std::string](CppStdString.htm) to [int](CppInt.htm), use
[StrToInt](CppStrToInt.htm).

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppIntToStr/CppIntToStr.pro
----------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2011-08-05T19:31:46 # #------------------------------------------------- QT       += core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x TARGET = CppIntToStr CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppIntToStr/main.cpp
----------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  //From http://www.richelbilderbeek.nl/CppIntToStr.htm std::string IntToStrCpp0x(const int x) {   return std::to_string(x); }  #include <sstream> #include <stdexcept> #include <string>  //From http://www.richelbilderbeek.nl/CppIntToStr.htm std::string IntToStrCpp98(const int x) {   std::ostringstream s;   if (!(s << x)) throw std::logic_error("IntToStr failed");   return s.str(); }  #include <string> #include <boost/lexical_cast.hpp>  //From http://www.richelbilderbeek.nl/CppIntToStr.htm std::string IntToStrBoost(const int x) {   return boost::lexical_cast<std::string>(x); }  #include <cassert>  int main() {   assert(IntToStrCpp0x(123) == "123");   assert(IntToStrBoost(123) == "123");   assert(IntToStrCpp98(123) == "123");    assert(IntToStrCpp0x(-123) == "-123");   assert(IntToStrBoost(-123) == "-123");   assert(IntToStrCpp98(-123) == "-123");    assert(IntToStrCpp0x(0) == "0");   assert(IntToStrBoost(0) == "0");   assert(IntToStrCpp98(0) == "0"); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
