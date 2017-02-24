[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [BoostTestExample2](CppBoostTestExample2.htm)
==============================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Test example 2](CppBoostTestExample2.htm) is a
[Boost.Test](CppBoostTest.htm) [example](CppExample.htm).

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.55
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppBoostTestExample2/CppBoostTestExample2.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  LIBS += -lboost_unit_test_framework SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostTestExample2/main.cpp
-------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs"  #define BOOST_TEST_DYN_LINK //Need to add 'LIBS += -lboost_unit_test_framework' to .pro file #define BOOST_TEST_MODULE Suites #include <boost/test/unit_test.hpp>  int add(int i, int j) {     return i + j; }  BOOST_AUTO_TEST_SUITE(Maths)  BOOST_AUTO_TEST_CASE(universeInOrder) {     BOOST_CHECK(add(2, 2) == 4); }  BOOST_AUTO_TEST_SUITE_END()  BOOST_AUTO_TEST_SUITE(Physics)  BOOST_AUTO_TEST_CASE(specialTheory) {     int e = 32;     int m = 2;     int c = 4;      BOOST_CHECK(e == m * c * c); }  BOOST_AUTO_TEST_SUITE_END() #pragma GCC diagnostic pop`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
