



 

 

 

 

 

([C++](Cpp.htm)) [StdPartitionExample1](CppStdPartitionExample1.htm)
====================================================================

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdPartitionExample1/CppStdPartitionExample1.pro
----------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` exists(../../ConsoleApplication.pri) {   include(../../ConsoleApplication.pri) } !exists(../../ConsoleApplication.pri) {   QT += core   QT += gui   CONFIG   += console   CONFIG   -= app_bundle   TEMPLATE = app   CONFIG(release, debug|release) {     DEFINES += NDEBUG NTRACE_BILDERBIKKEL   }   QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++   unix {     QMAKE_CXXFLAGS += -Werror   } }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdPartitionExample1/main.cpp
----------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <cmath> #include <iostream> #include <iterator> #include <vector>  //From http://www.richelbilderbeek.nl/CppIsPrime.htm bool IsPrime(const int x) {   const int max   = static_cast<int>(       std::sqrt(static_cast<double>(x))     ) + 1;    for (int i=2; i!=max; ++i)   {     if (x % i == 0) return false;   }    return true; }  int main() {   std::vector<int> v;   for (int i=1; i!=10; ++i) v.push_back(i);    //Partition the std::vector in primes and non-primes   typedef std::vector<int>::iterator Iterator;   const Iterator p_end = std::partition(v.begin(),v.end(),IsPrime);    std::cout << "Primes: ";   std::copy(v.begin(),p_end,std::ostream_iterator<int>(std::cout," "));   std::cout << "\nNon-primes: ";   std::copy(p_end,v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << "\n"; }  /* Screen output:  Primes: 1 2 3 7 5 Non-primes: 6 4 8 9 Press <RETURN> to close this window...  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
