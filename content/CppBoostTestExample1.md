
 

 

 

 

 

([C++](Cpp.md)) [BoostTestExample1](CppBoostTestExample1.md)
==============================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Boost.Test example 1](CppBoostTestExample1.md) is a
[Boost.Test](CppBoostTest.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppBoostTestExample1' (zip)](CppBoostTestExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppBoostTestExample1/CppBoostTestExample1.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/Boost.pri)  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppBoostTestExample1/main.cpp
-------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib>  #define BOOST_TEST_DYN_LINK #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/test/included/unit_test.hpp> #include <boost/bind.hpp> #pragma GCC diagnostic pop  void must_be_equal(int i, int j) {   BOOST_CHECK(i == j); }  struct MyClass {   static void Test()   {     const int i = std::rand();     BOOST_CHECK(i >= 0);   } };  bool my_init_function() {   using boost::unit_test::framework::master_test_suite;   //Add MyClass::Test as a test case   {     master_test_suite().add(BOOST_TEST_CASE(&MyClass::Test));   }   //Test integers being equal to themselves   {     master_test_suite().add(BOOST_TEST_CASE(boost::bind(&must_be_equal, 1, 1)));     master_test_suite().add(BOOST_TEST_CASE(boost::bind(&must_be_equal, 2, 2)));     master_test_suite().add(BOOST_TEST_CASE(boost::bind(&must_be_equal, 3, 3)));     master_test_suite().add(BOOST_TEST_CASE(boost::bind(&must_be_equal, 3, 4))); //Error added on purpose   }   return true; }  int main(int argc, char* argv[]) {   const int errors = boost::unit_test::unit_test_main( &my_init_function, argc, argv );   std::cout << (errors ? "Not all tests succeeded" : "All tests succeeded!") << '\n'; }  /* Screen output:  Starting /home/richel/GitHubs/richelbilderbeek/develop/ProjectRichelBilderbeek/Test/build-CppBoostTestExample1-Desktop-Debug/CppBoostTestExample1... Running 5 test cases... ../CppBoostTestExample1/main.cpp(13): error in "boost::bind(&must_be_equal, 3, 4)": check i == j failed Not all tests succeeded  *** 1 failure detected in test suite "Master Test Suite" /home/richel/GitHubs/richelbilderbeek/develop/ProjectRichelBilderbeek/Test/build-CppBoostTestExample1-Desktop-Debug/CppBoostTestExample1 exited with code 0  */`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

