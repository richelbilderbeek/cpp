[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdVectorExample4](CppStdVectorExample4.htm)
==============================================================

 

![Cpp98](PicCpp98.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[std::vector example 4: remove an element with preserving the
order](CppVectorExample4.htm) is a [std::vector](CppVector.htm) example
that demonstrates how to remove an element with preserving the order.

 

-   [Download the Qt Creator project
    'CppVectorExample4' (zip)](CppVectorExample4.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdVectorExample4/CppStdVectorExample4.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ unix {   QMAKE_CXXFLAGS += -Werror }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdVectorExample4/main.cpp
-------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int main() {   std::vector<int> v { 1,4,9,16,25 };    const std::size_t index = 2;   assert(v[index] == 9 && "Erase the 9");   v.erase( v.begin() + index);    const std::vector<int> expected { 1,4,16,25 };   assert(v == expected ); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
