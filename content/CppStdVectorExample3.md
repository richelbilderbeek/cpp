



 

 

 

 

 

([C++](Cpp.htm)) [StdVectorExample3](CppStdVectorExample3.htm)
==============================================================

 

![Cpp11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[std::vector example 3: C++11 emplace member
function](CppVectorExample3.htm) is a [std::vector](CppVector.htm)
example that demonstrates the [C++11](Cpp11.htm) emplace [member
function](CppMemberFunction.htm).

 

-   [Download the Qt Creator project
    'CppVectorExample3' (zip)](CppVectorExample3.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdVectorExample3/CppStdVectorExample3.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ unix {   QMAKE_CXXFLAGS += -Werror }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdVectorExample3/main.cpp
-------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int main() {   std::vector<int> v { 2,3 };   v.emplace(v.begin(),1);   v.emplace(v.begin(),0);   const std::vector<int> expected { 0,1,2,3 };   assert(v == expected ); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
