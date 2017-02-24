
 

 

 

 

 

([C++](Cpp.md)) [StdTupleExample1](CppStdTupleExample1.md)
============================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[std::tuple example 1](CppStdTupleExample1.md) is a
[std::tuple](CppStdTupleExample1.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppStdTupleExample1' (zip)](CppStdTupleExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdTupleExample1/CppStdTupleExample1.pro
--------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdTupleExample1/main.cpp
------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <tuple> #include <typeinfo>  int main() {   typedef std::tuple<int,double,std::string> Tuple;    static_assert(std::tuple_size<Tuple>::value == 3,"Tuple has size 3");   static_assert(std::is_same<std::tuple_element<0,Tuple>::type,int>(),"First element is int");   static_assert(std::is_same<std::tuple_element<1,Tuple>::type,double>(),"Second element is double");   static_assert(std::is_same<std::tuple_element<2,Tuple>::type,std::string>(),"Third element is std::string");    Tuple t = std::make_tuple(123,3.14159,"Bilderbikkel");     const int x1 = std::get<0>(t);   const double x2 = std::get<1>(t);   const std::string x3 = std::get<2>(t);    std::get<0>(t) = x1 + 1;   std::get<1>(t) = x2 + 1.0;   std::get<2>(t) = x3 + " was here";    assert(std::get<0>(t) == 124);   assert(std::get<1>(t) == 4.14159);   assert(std::get<2>(t) == "Bilderbikkel was here");  }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
