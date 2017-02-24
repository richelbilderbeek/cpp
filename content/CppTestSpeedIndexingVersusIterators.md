
 

 

 

 

 

([C++](Cpp.md)) [TestSpeedIndexingVersusIterators](CppTestSpeedIndexingVersusIterators.md)
============================================================================================

 

A simple [benchmark](CppBenchmark.md) that tests the speed of
incrementing each 2D-vector's elements. It compares the speed of doing
so using indexing versus using [iterators](CppIterator.md).

 

-   [Download the Qt Creator project 'TestSpeedIndexingVersusIterators'
    (version 1.0)(zip)](CppTestSpeedIndexingVersusIterators_1_0.zip)
-   [Download the Windows executable of
    'TestSpeedIndexingVersusIterators'
    (version 1.0)(zip)](CppTestSpeedIndexingVersusIteratorsExe_1_0.zip)

 

 

 

 

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppTestSpeedIndexingVersusIterators.pro
--------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 SOURCES += main.cpp `
  ----------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <vector> #include <boost/timer.hpp>  ///From http://www.richelbilderbeek.nl/CppTestSpeedIndexingVersusIterators.htm int main() {   const int size = 5000;   const int nRepeat = 100;   std::vector<std::vector<int> > v(size,std::vector<int>(size));    double tIndexing = 0.0;   //Add nRepeat times 1 to each element using indexing   {     boost::timer t;     for (int i=0; i!=nRepeat; ++i)     {       for (int y=0; y!=size; ++y)       {         for (int x=0; x!=size; ++x)         {           ++v[y][x];         }       }     }     tIndexing = t.elapsed();   }    double tIterator = 0.0;   //Add nRepeat times 1 to each element using iterators   {     boost::timer t;     for (int i=0; i!=nRepeat; ++i)     {       const std::vector<std::vector<int> >::iterator rowIterEnd = v.end();       for (std::vector<std::vector<int> >::iterator rowIter = v.begin();         rowIter!=rowIterEnd;         ++rowIter)       {         const std::vector<int>::iterator colIterEnd = (*rowIter).end();         for (std::vector<int>::iterator colIter = (*rowIter).begin();           colIter!=colIterEnd;           ++colIter)         {           ++(*colIter);         }       }      }     tIterator = t.elapsed();   }    std::cout << "Time indexing: " << tIndexing     << "\tTime iterator: " << tIterator << std::endl;   std::cin.get(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Results
-------

 

On a laptop (built in around 2011) with [Lubuntu](CppLubuntu.md):

 

  ------------------------------------------------
  ` Time indexing: 2.88     Time iterator: 2.51`
  ------------------------------------------------

 

On the same laptop (built in around 2011) with [Lubuntu](CppLubuntu.md)
using [Wine](CppWine.md):

 

  ------------------------------------------------
  ` Time indexing: 2.92     Time iterator: 2.58`
  ------------------------------------------------

 

 

 

 

 

 

