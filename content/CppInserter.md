

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Inserter](CppInserter.htm)
============================================

 

This page is about two different [inserters](CppInserter.htm):

1.  [Inserters](CppInserter.htm) (general): an output
    [iterator](CppIterator.htm) that inserts elements in a
    [container](CppContainer.htm)
2.  [std::inserter](CppStdInserter.htm): a type of
    [inserter](CppInserter.htm) that inserts at a certain
    [iterator](CppIterator.htm)

 

There are three types of [inserters](CppInserter.htm):

1.  [std::back\_inserter](CppStdBack_inserter.htm)
2.  [std::front\_inserter](CppStdFront_inserter.htm)
3.  [std::inserter](CppStdInserter.htm)

 

[Inserters](CppInserter.htm) can be found in the [header
file](CppHeaderFile.htm) [iterator.h](CppIteratorH.htm).

 

 

 

 

 

Example
-------

 

-   [Download the Qt Creator project
    'CppInserters' (zip)](CppInserters.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppInserters.pro
---------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 SOURCES += main.cpp`
  ---------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <list> #include <set> #include <vector>  int main() {   {     //std::back_inserter: applies push_back     std::vector<int> w { 0,1,2 };      const std::vector<int> to_append { 3,4,5 };      std::copy(to_append.begin(),to_append.end(),std::back_inserter(w));      const std::vector<int> expected { 0,1,2,3,4,5 };     assert(w == expected);   }    {     //std::front_inserter: applies push_front     std::list<int> w { 3,4,5 };      const std::list<int> to_prepend { 2,1,0 }; //Must be reversed      std::copy(to_prepend.begin(),to_prepend.end(),std::front_inserter(w));      const std::list<int> expected { 0,1,2,3,4,5 };     assert(w == expected);   }    {     //std::inserter: applies insert     std::set<int> w { 1,3,5 }; //Don't care about the order      const std::set<int> to_insert { 4,0,2 }; //Don't care about the order      std::copy(to_insert.begin(),to_insert.end(),std::inserter(w,w.begin()));      const std::set<int> expected { 0,1,2,3,4,5 };     assert(w == expected);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
