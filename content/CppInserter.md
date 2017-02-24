
 

 

 

 

 

([C++](Cpp.md)) [Inserter](CppInserter.md)
============================================

 

This page is about two different [inserters](CppInserter.md):

1.  [Inserters](CppInserter.md) (general): an output
    [iterator](CppIterator.md) that inserts elements in a
    [container](CppContainer.md)
2.  [std::inserter](CppStdInserter.md): a type of
    [inserter](CppInserter.md) that inserts at a certain
    [iterator](CppIterator.md)

 

There are three types of [inserters](CppInserter.md):

1.  [std::back\_inserter](CppStdBack_inserter.md)
2.  [std::front\_inserter](CppStdFront_inserter.md)
3.  [std::inserter](CppStdInserter.md)

 

[Inserters](CppInserter.md) can be found in the [header
file](CppHeaderFile.md) [iterator.h](CppIteratorH.md).

 

 

 

 

 

Example
-------

 

-   [Download the Qt Creator project
    'CppInserters' (zip)](CppInserters.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppInserters.pro
---------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <list> #include <set> #include <vector>  int main() {   {     //std::back_inserter: applies push_back     std::vector<int> w { 0,1,2 };      const std::vector<int> to_append { 3,4,5 };      std::copy(to_append.begin(),to_append.end(),std::back_inserter(w));      const std::vector<int> expected { 0,1,2,3,4,5 };     assert(w == expected);   }    {     //std::front_inserter: applies push_front     std::list<int> w { 3,4,5 };      const std::list<int> to_prepend { 2,1,0 }; //Must be reversed      std::copy(to_prepend.begin(),to_prepend.end(),std::front_inserter(w));      const std::list<int> expected { 0,1,2,3,4,5 };     assert(w == expected);   }    {     //std::inserter: applies insert     std::set<int> w { 1,3,5 }; //Don't care about the order      const std::set<int> to_insert { 4,0,2 }; //Don't care about the order      std::copy(to_insert.begin(),to_insert.end(),std::inserter(w,w.begin()));      const std::set<int> expected { 0,1,2,3,4,5 };     assert(w == expected);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

