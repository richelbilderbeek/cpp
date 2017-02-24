



 

 

 

 

 

([C++](Cpp.htm)) [StdBitsetExample2](CppStdBitsetExample2.htm)
==============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdBitsetExample2/CppStdBitsetExample2.pro
----------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  QMAKE_CXXFLAGS += -std=c++1y SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdBitsetExample2/main.cpp
-------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <bitset> #include <cassert> #include <fstream>  void BitsetToFile(   const std::bitset<8>& bitset,   const std::string& filename) {   std::ofstream f(filename.c_str());   f << bitset; }  std::bitset<8> FileToBitset(const std::string& filename) {   std::ifstream f(filename.c_str());   std::bitset<8> bitset;   f >> bitset;   return bitset; }   int main() {   const std::bitset<8> b(std::string("01010101"));   const std::string filename{"tmp.txt"};   BitsetToFile(b,filename);    const std::bitset<8> c{FileToBitset(filename)};   assert(b == c); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
