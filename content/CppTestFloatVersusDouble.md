



 

 

 

 

 

([C++](Cpp.htm)) [TestFloatVersusDouble](CppTestFloatVersusDouble.htm)
======================================================================

 

 

A simple [benchmark](CppBenchmark.htm) to test how much faster or slower
the use of [float](CppFloat.htm) is compared to the use of
[doubles](CppDouble.htm).

 

Prefer a [double](CppDouble.htm) over a [float](CppFloat.htm) \[1\].

 

-   [Download the Qt Creator project 'CppTestFloatVersusDouble'
    (version 3.0)(zip)](CppTestFloatVersusDouble_3_0.zip)
-   [Download the Qt Creator project 'CppTestFloatVersusDouble'
    (version 2.0)(zip)](CppTestFloatVersusDouble_2_0.zip)
-   [Download the code of 'CppTestFloatVersusDouble'
    (version 1.0)(zip)](CppTestFloatVersusDouble.txt)
-   [Download a Windows executable of 'CppTestFloatVersusDouble'
    (version 3.0)(zip)](CppTestFloatVersusDoubleExe_3_0.zip)
-   [Download a Windows executable of 'CppTestFloatVersusDouble'
    (version 2.0)(zip)](CppTestFloatVersusDoubleExe_2_0.zip)

 

 

 

 

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppTestFloatVersusDouble.pro
---------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 SOURCES += main.cpp `
  ----------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream> #include <vector> #include <boost/timer.hpp>  template <class T> double Test(   const int nRepeat,   const int size,   const std::vector<T>& a,   const std::vector<T>& b,   std::vector<T>& c) {   boost::timer t;   for (int i=0; i!=nRepeat; ++i)   {     for (int x=0; x!=size; ++x)     {       c[x] = a[x] * b[x];     }   }   return t.elapsed(); }  ///Benchmark to compare the speed of float versus double //From http://www.richelbilderbeek.nl/CppTestFloatVersusDouble.htm int main() {   const int size = 1000;   const int n_repeat = 1000;    std::vector<double> vd1(size);   std::vector<double> vd2(size);   std::vector<double> vd3(size);   std::vector<float> vf1(size);   std::vector<float> vf2(size);   std::vector<float> vf3(size);    //Initialize the std::vector<double> with random doubles   for (int i=0; i!=size; ++i)   {     vd1[i] = static_cast<double>(std::rand())       / static_cast<double>(3 + (std::rand() % 100));     vd2[i] = static_cast<double>(std::rand())       / static_cast<double>(3 + (std::rand() % 100));   }    //Copy the std::vector<double> to std::vector<float>,   //so that the values are the same   for (int i=0; i!=size; ++i)   {     vf1[i] = static_cast<float>(vd1[i]);     vf2[i] = static_cast<float>(vd2[i]);   }    //Some tallies   int n_float_faster = 0;   int n_double_faster = 0;   int n_draw = 0;   double sum_time_float = 0.0;   double sum_time_double = 0.0;    while (1)   {     double time_float = 0.0;     double time_double = 0.0;     if ((std::rand() >> 4) % 2 == 0)     {       //Floats first       time_float  = Test(n_repeat,size,vf1,vf2,vf3);       time_double = Test(n_repeat,size,vd1,vd2,vd3);     }     else     {       //Doubles first       time_double = Test(n_repeat,size,vd1,vd2,vd3);       time_float  = Test(n_repeat,size,vf1,vf2,vf3);     }     std::swap(vf1,vf3);     std::swap(vd1,vd3);     sum_time_float  += time_float;     sum_time_double += time_double;      if (time_double < time_float)     {       ++n_double_faster;     }     else if (time_float < time_double)     {       ++n_float_faster;     }     else     {       ++n_draw;     }     const int sum = n_double_faster + n_float_faster + n_draw;     if (sum == 10000) break;     if (sum % 100 == 0)     {       std::cout         << "Draw " << n_draw << " times. "         << '\n'         << "Float  has been faster " << n_float_faster << " times. "         << "Sum time: " << sum_time_float         << '\n'         << "Double has been faster " << n_double_faster << " times. "         << "Sum time: " << sum_time_double         << std::endl;     }   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Results
-------

 

 

 

 

 

### Version 1.0

 

On a Windows XP (built in around 2005) computer, using version 1.0:

 

  -------------------------------------------------------------------------------------------------------------------------
  ` Draw 0 times. Float  has been faster 465 times. Sum time: 385.621 Double has been faster 106 times. Sum time: 439.11`
  -------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

### Version 2.0

 

On a laptop (built in around 2011) with [Lubuntu](CppLubuntu.htm) using
version 2.0:

 

  --------------------------------------------------------------------------------------------------------------------------
  ` Draw 0 times. Float  has been faster 8702 times. Sum time: 102.81 Double has been faster 1198 times. Sum time: 101.54`
  --------------------------------------------------------------------------------------------------------------------------

 

On the same laptop (built in around 2011) with [Lubuntu](CppLubuntu.htm)
using [Wine](CppWine.htm) using version 2.0:

 

  -----------------------------------------------------------------------------------------------------------------------
  ` Draw 0 times. Float  has been faster 7406 times. Sum time: 86.62 Double has been faster 994 times. Sum time: 86.45`
  -----------------------------------------------------------------------------------------------------------------------

 

This result has been taken from [this
screenshot](CppTestFloatVersusDouble_2_0.png) (notice that I used the
top-left one, as the program was running four times).

 

 

 

 

 

 

### Version 3.0

 

On a laptop (built in around 2011)(same as used in the version 2.0 test)
with [Lubuntu](CppLubuntu.htm) using version 3.0:

 

  ------------------------------------------------------------------------------------------------------------------------
  ` Draw 3 times. Float  has been faster 570 times. Sum time: 217.33 Double has been faster 627 times. Sum time: 210.45`
  ------------------------------------------------------------------------------------------------------------------------

 

On the same laptop (built in around 2011) with [Lubuntu](CppLubuntu.htm)
using [Wine](CppWine.htm) using version 3.0:

 

  -------------------------------------------------------------------------------------------------------------------------
  ` Draw 7 times.  Float  has been faster 247 times. Sum time: 142.88 Double has been faster 546 times. Sum time: 120.65`
  -------------------------------------------------------------------------------------------------------------------------

 

This result has been taken from [this
screenshot](CppTestFloatVersusDouble_3_0.png) (notice that I used the
top-left one, as the program was running four times).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 4.10.15:
    'Prefer a double over a float or a long double.'

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
