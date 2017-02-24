
 

 

 

 

 

([C++](Cpp.md)) [BoostTestExample2](CppBoostTestExample2.md)
==============================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Test example 2](CppBoostTestExample2.md) is a
[Boost.Test](CppBoostTest.md) [example](CppExample.md).

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.55
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostTestExample2/CppBoostTestExample2.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  LIBS += -lboost_unit_test_framework SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostTestExample2/main.cpp
-------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs"  #define BOOST_TEST_DYN_LINK //Need to add 'LIBS += -lboost_unit_test_framework' to .pro file #define BOOST_TEST_MODULE Suites #include <boost/test/unit_test.hpp>  int add(int i, int j) {     return i + j; }  BOOST_AUTO_TEST_SUITE(Maths)  BOOST_AUTO_TEST_CASE(universeInOrder) {     BOOST_CHECK(add(2, 2) == 4); }  BOOST_AUTO_TEST_SUITE_END()  BOOST_AUTO_TEST_SUITE(Physics)  BOOST_AUTO_TEST_CASE(specialTheory) {     int e = 32;     int m = 2;     int c = 4;      BOOST_CHECK(e == m * c * c); }  BOOST_AUTO_TEST_SUITE_END() #pragma GCC diagnostic pop`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

