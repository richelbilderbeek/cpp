[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [IteratorExample1](CppIteratorExample1.htm)
============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppIteratorExample1/CppIteratorExample1.pro
--------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppIteratorExample1/main.cpp
------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <list>  int main() {   std::list<int> my_list;   my_list.push_back( 1);   my_list.push_back( 4);   my_list.push_back( 9);   my_list.push_back(16);   my_list.push_back(25);   my_list.push_back(36);   my_list.push_back(49);    //Display the list (not preferred)   typedef std::list<int>::const_iterator Iterator;   const Iterator j = my_list.end();   for (Iterator i = my_list.begin(); i!=j; ++i)   {     std::cout << *i << '\n';   } }  /* Screen output:  1 4 9 16 25 36 49 Press <RETURN> to close this window...  */`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
