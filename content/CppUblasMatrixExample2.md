
 

 

 

 

 

([C++](Cpp.md)) [boost::numeric::ublas::matrix example 2: transposition](CppUblasMatrixExample2.md)
=====================================================================================================

 

[boost::numeric::ublas::matrix example 2:
transposition](CppUblasMatrixExample2.md) is a
[Boost.uBLAS](CppUblas.md) [library](CppLibrary.md) example.

 

-   [Download the Qt Creator project
    'CppUblasMatrixExample2' (zip)](CppUblasMatrixExample2.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppUblasMatrixExample2.pro
-------------------------------------------------------------------

 

  ----------------------------------------------------------------------------
  ` TEMPLATE = app  CONFIG += console  CONFIG -= qt  SOURCES += main.cpp   `
  ----------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/numeric/ublas/matrix.hpp>      const boost::numeric::ublas::matrix<int> CreateMatrix(const int n_cols, const int n_rows)  {    boost::numeric::ublas::matrix<int> m(n_rows,n_cols); //y-x-ordered    for (int y = 0; y != n_rows; ++y)    {      for (int x = 0; x != n_cols; ++x)      {        m(y,x) = (y * 10) + x;      }    }    return m;  }    int main()  {    const int n_cols = 3;    const int n_rows = 2;    const boost::numeric::ublas::matrix<int> m = CreateMatrix(n_cols,n_rows);      //boost::numeric::ublas::matrix is y-x-ordered    assert(m(0,0) ==  0); assert(m(0,1) ==  1); assert(m(0,2) ==  2);    assert(m(1,0) == 10); assert(m(1,1) == 11); assert(m(1,2) == 12);      //Transpose    const boost::numeric::ublas::matrix<int> n = boost::numeric::ublas::trans(m);    assert(n(0,0) ==  0); assert(n(0,1) == 10);    assert(n(1,0) ==  1); assert(n(1,1) == 11);    assert(n(2,0) ==  2); assert(n(2,1) == 12);  } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

