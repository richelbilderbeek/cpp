



 

 

 

 

 

([C++](Cpp.htm)) [StdVectorExample1](CppStdVectorExample1.htm)
==============================================================

 

![Cpp98](PicCpp98.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[std::vector example 1: basics](CppVectorExample1.htm) is a
[std::vector](CppVector.htm) example that demonstrates writing to and
reading from a [std::vector](CppVector.htm)

 

-   [Download the Qt Creator project
    'CppVectorExample1' (zip)](CppVectorExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdVectorExample1/CppStdVectorExample1.pro
----------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdVectorExample1/main.cpp
-------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <vector>  int main() {   const std::size_t size = 10;   std::vector<int> v(size);   for (int i=0; i!=size; ++i)   {     v[i]=i; //Store in v     std::cout << v[i] << std::endl; //Read from v   } }  /* Screen output:  0 1 2 3 4 5 6 7 8 9 Press <RETURN> to close this window...  */`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
