



 

 

 

 

 

([C++](Cpp.htm)) [BoostTupleExample1](CppBoostTupleExample1.htm)
================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Tuple example 1](CppBoostTupleExample1.htm) is a
[Boost.Tuple](CppBoostTuple.htm) [example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppBoostTupleExample1' (zip)](CppBoostTupleExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostTupleExample1/CppBoostTupleExample1.pro
------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or uncomment the code below # QT += core # QT += gui # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or uncomment the code below  # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostTupleExample1/main.cpp
--------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-but-set-parameter" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/tuple/tuple.hpp> #pragma GCC diagnostic pop  int main() {   typedef boost::tuple<int,double,std::string> Tuple;    static_assert(boost::tuples::length<Tuple>::value == 3,"Tuple has size 3");   static_assert(std::is_same<boost::tuples::element<0,Tuple>::type,int>(),"First element is int");   static_assert(std::is_same<boost::tuples::element<1,Tuple>::type,double>(),"Second element is double");   static_assert(std::is_same<boost::tuples::element<2,Tuple>::type,std::string>(),"Third element is std::string");    Tuple t = boost::tuples::make_tuple(123,3.14159,"Bilderbikkel");     const int x1 = boost::get<0>(t);   const double x2 = boost::get<1>(t);   const std::string x3 = boost::get<2>(t);    boost::get<0>(t) = x1 + 1;   boost::get<1>(t) = x2 + 1.0;   boost::get<2>(t) = x3 + " was here";    assert(boost::get<0>(t) == 124);   assert(boost::get<1>(t) == 4.14159);   assert(boost::get<2>(t) == "Bilderbikkel was here");  }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
