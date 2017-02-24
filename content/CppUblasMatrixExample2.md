



 

 

 

 

 

([C++](Cpp.htm)) [boost::numeric::ublas::matrix example 2: transposition](CppUblasMatrixExample2.htm)
=====================================================================================================

 

[boost::numeric::ublas::matrix example 2:
transposition](CppUblasMatrixExample2.htm) is a
[Boost.uBLAS](CppUblas.htm) [library](CppLibrary.htm) example.

 

-   [Download the Qt Creator project
    'CppUblasMatrixExample2' (zip)](CppUblasMatrixExample2.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppUblasMatrixExample2.pro
-------------------------------------------------------------------

 

  ----------------------------------------------------------------------------
  ` TEMPLATE = app  CONFIG += console  CONFIG -= qt  SOURCES += main.cpp   `
  ----------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/numeric/ublas/matrix.hpp>      const boost::numeric::ublas::matrix<int> CreateMatrix(const int n_cols, const int n_rows)  {    boost::numeric::ublas::matrix<int> m(n_rows,n_cols); //y-x-ordered    for (int y = 0; y != n_rows; ++y)    {      for (int x = 0; x != n_cols; ++x)      {        m(y,x) = (y * 10) + x;      }    }    return m;  }    int main()  {    const int n_cols = 3;    const int n_rows = 2;    const boost::numeric::ublas::matrix<int> m = CreateMatrix(n_cols,n_rows);      //boost::numeric::ublas::matrix is y-x-ordered    assert(m(0,0) ==  0); assert(m(0,1) ==  1); assert(m(0,2) ==  2);    assert(m(1,0) == 10); assert(m(1,1) == 11); assert(m(1,2) == 12);      //Transpose    const boost::numeric::ublas::matrix<int> n = boost::numeric::ublas::trans(m);    assert(n(0,0) ==  0); assert(n(0,1) == 10);    assert(n(1,0) ==  1); assert(n(1,1) == 11);    assert(n(2,0) ==  2); assert(n(2,1) == 12);  } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
