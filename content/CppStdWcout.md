



 

 

 

 

 

([C++](Cpp.htm)) [std::wcout](CppWcout.htm)
===========================================

 

[std::wcout](CppWcout.htm) is the standard output
[stream](CppStream.htm)[]() similar to [std::cout](CppCout.htm), yet for
[wide characters](CppWchar_t.htm).

 

-   [Download the Qt Creator project 'CppWcout' (zip)](CppWcout.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppWcout.pro
-----------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Wall SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout  << "Hello World from std::cout\n";   std::clog  << "Hello World from std::clog\n";   std::cerr  << "Hello World from std::cerr\n";   std::wcout << "Hello World from std::wcout\n";   std::wclog << "Hello World from std::wclog\n";   std::wcerr << "Hello World from std::wcerr\n"; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
