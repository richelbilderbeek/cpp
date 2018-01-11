
 

 

 

 

 

([C++](Cpp.md)) [GprofQtCreatorExample1](CppGprofQtCreatorExample1.md)
========================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[Qt Creator gprof example 1: profiling a simple console application in
Qt Creator, using Build Settings](CppGprofQtCreatorExample1.md) is a
[gprof](CppGprof.md) [example](CppExample.md) that shows how to
profile a simple console application in [Qt Creator](CppQt.md), using
the Build Settings.

 

-   [Download the Qt Project of
    'CppGprofQtCreatorExample1' (zip)](CppGprofQtCreatorExample1.zip)

 

Here follows a step-by-step guide to use [gprof](CppGprof.md) to do the
profiling of a simple [Qt Creator](CppQt.md) project:

 

1.  Go to 'Projects -&gt; Build Settings' and add a custom Build step.
    Fill in the information as in the screenshot below
2.  [View screenshot](CppGprofQtCreatorExample1_1.png)
3.  View your project folder. There will be few files
4.  [View screenshot](CppGprofQtCreatorExample1_2.png)
5.  Run the program. The executable 'profile\_main' has been created in
    your project folder
6.  [View screenshot](CppGprofQtCreatorExample1_3.png)
7.  Run 'profile\_main' and the file 'gmon.out' is created
8.  [View screenshot](CppGprofQtCreatorExample1_4.png)
9.  Start a Terminal, go to the project folder and use the command
    'gprof profile\_main &gt; profile.txt'
10. [View screenshot](CppGprofQtCreatorExample1_5.png)
11. The file 'profile.txt' will be created
12. [View screenshot](CppGprofQtCreatorExample1_6.png)
13. The file 'profile.txt' will contain the profiling information

 

 

 

 

 

Profiling results
-----------------

 

Here I show the results comparing the five functions, copied from the
results file:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Flat profile:    %   cumulative   self              self     total  time   seconds   seconds    calls  ms/call  ms/call  name  13.59      1.54     0.28        1   280.00   700.00  void BubbleSort<int>(std::vector<int, std::allocator<int> >&)  12.14      1.79     0.25        1   250.00   670.00  void InsertionSort<int>(std::vector<int, std::allocator<int> >&)  11.65      2.03     0.24        1   240.00   660.00  void SelectionSort<int>(std::vector<int, std::allocator<int> >&)   0.00      2.06     0.00        1     0.00    24.98  void SortVector<int>(std::vector<int, std::allocator<int> >&)   0.00      2.06     0.00        1     0.00     5.02  CreateShuffledVector(unsigned int)`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Conclusion: as expected, SortVector (a QuickSort) is by far the quickest
[sorting](CppStdSort.md) [algorithm](CppAlgorithm.md).

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGprofQtCreatorExample1/CppGprofExample1.pro
-----------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  include(../../Libraries/Boost.pri) #Or use the code below # win32 { #   INCLUDEPATH += \ #     ../../Libraries/boost_1_54_0 # }  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGprofQtCreatorExample1/main.cpp
------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  #pragma GCC diagnostic push #pragma GCC diagnostic ignored "-Weffc++" #pragma GCC diagnostic ignored "-Wunused-local-typedefs" #include <boost/foreach.hpp> #pragma GCC diagnostic pop  //From http://www.richelbilderbeek.nl/CppBubbleSort.htm template <class T> void BubbleSort(std::vector<T>& v) {   const int size = v.size();   for(int i=0; i!=size-1; ++i)   {     for(int j=0; j!=size-i-1; ++j)     {       if(v[j] > v[j+1])       {         std::swap(v[j],v[j+1]);       }     }   } }  //From http://www.richelbilderbeek.nl/CppInsertionSort.htm template <typename T> void InsertionSort(std::vector<T>& v) {   const int size = v.size();   for(int i=1; i!=size; ++i)   {     for(int j=0; j!=i; ++j)     {       if (v[j]>v[i])       {         const int temp=v[j];         v[j]=v[i];         for(int k=i;k>j;--k) { v[k]=v[k-1]; }         v[j+1]=temp;       }     }   } }  //From http://www.richelbilderbeek.nl/CppSelectionSort.htm template <typename T> void SelectionSort(std::vector<T>& v) {   const int size = v.size();   for(int i=0; i!=size-1; ++i)   {     for(int j=i+1; j!=size; ++j)     {       if (v[i]> v[j])       {         std::swap(v[i],v[j]);       }     }   } }  //From http://www.richelbilderbeek.nl/CppSortVector.htm template <class T> void SortVector(std::vector<T>& v) {   std::sort(v.begin(), v.end()); }  const std::vector<int> CreateShuffledVector(const std::size_t sz) {   std::vector<int> v(sz);    int value = 0;   BOOST_FOREACH(int& i,v)   {     i = value;     ++value;   }   std::random_shuffle(v.begin(),v.end());   return v; }   int main() {   const std::vector<int> v = CreateShuffledVector(10000);    std::vector<int> v1(v);   std::vector<int> v2(v);   std::vector<int> v3(v);   std::vector<int> v4(v);    BubbleSort(v1);   InsertionSort(v2);   SelectionSort(v3);   SortVector(v4);    assert(v1==v2);   assert(v2==v3);   assert(v3==v4); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

