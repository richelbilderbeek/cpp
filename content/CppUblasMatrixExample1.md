[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [UblasMatrixExample1](CppUblasMatrixExample1.htm)
==================================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[boost::numeric::ublas::matrix example 1: matrix creation, read and
write to elements](CppUblasMatrixExample1.htm) is a
[Boost.uBLAS](CppUblas.htm) [library](CppLibrary.htm)
[example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppUblasMatrixExample1' (zip)](CppUblasMatrixExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppUblasMatrixExample1/CppUblasMatrixExample1.pro
--------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

./CppUblasMatrixExample1/main.cpp
---------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/numeric/ublas/matrix.hpp> #include <boost/numeric/ublas/io.hpp>  int main() {   const int n_cols = 2;   const int n_rows = 3;   {     boost::numeric::ublas::matrix<int> m(n_rows,n_cols);     assert(n_rows == static_cast<int>(m.size1()));     assert(n_cols == static_cast<int>(m.size2()));     for (int y = 0; y != n_rows; ++y)     {       for (int x = 0; x != n_cols; ++x)       {         m(y,x) = (y * 10) + x;       }     }     std::cout << m << std::endl;     assert(m(0,0) ==  0); assert(m(0,1) ==  1);     assert(m(1,0) == 10); assert(m(1,1) == 11);     assert(m(2,0) == 20); assert(m(2,1) == 21);   }   {     boost::numeric::ublas::matrix<int,boost::numeric::ublas::column_major> m(n_cols,n_rows);     assert(n_cols == static_cast<int>(m.size1()));     assert(n_rows == static_cast<int>(m.size2()));     for (int x = 0; x != n_cols; ++x)     {       for (int y = 0; y != n_rows; ++y)       {         m(x,y) = (y * 10) + x;       }     }     std::cout << m << std::endl;     assert(m(0,0) ==  0); assert(m(1,0) ==  1);     assert(m(0,1) == 10); assert(m(1,1) == 11);     assert(m(0,2) == 20); assert(m(1,2) == 21);   } }  /*  [3,2]((0,1),(10,11),(20,21)) [2,3]((0,10,20),(1,11,21))  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
