



 

 

 

 

 

([C++](Cpp.htm)) [MultimapExample1](CppMultimapExample1.htm)
============================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 13.10 (saucy)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm)
    unknown

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.8.1

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.8.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMultimapExample1/CppMultimapExample1.pro
--------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Wextra SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMultimapExample1/main.cpp
------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <map> #include <string>  int main() {   typedef std::multimap<std::string,int> Container;   typedef Container::const_iterator Iterator;    Container questions;    questions.insert(std::make_pair("A prime number between 5 and 10",7));   questions.insert(std::make_pair("A prime number between 10 and 15",11));   questions.insert(std::make_pair("A prime number between 10 and 15",13));   questions.insert(std::make_pair("A prime number between 10 and 20",11));   questions.insert(std::make_pair("A prime number between 10 and 20",13));   questions.insert(std::make_pair("A prime number between 10 and 20",17));   questions.insert(std::make_pair("A prime number between 10 and 20",19));   questions.insert(std::make_pair("A prime number between 20 and 25",23));    const std::pair<Iterator,Iterator> answers     = questions.equal_range("A prime number between 10 and 20");    for (Iterator i = answers.first; i!= answers.second; ++i)   {     std::cout << i->second << '\n';   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
