
 

 

 

 

 

([C++](Cpp.md)) [StdBitsetExample2](CppStdBitsetExample2.md)
==============================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 15.04 (vivid)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 3.1.1

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdBitsetExample2/CppStdBitsetExample2.pro
----------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  QMAKE_CXXFLAGS += -std=c++1y SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdBitsetExample2/main.cpp
-------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <bitset> #include <cassert> #include <fstream>  void BitsetToFile(   const std::bitset<8>& bitset,   const std::string& filename) {   std::ofstream f(filename.c_str());   f << bitset; }  std::bitset<8> FileToBitset(const std::string& filename) {   std::ifstream f(filename.c_str());   std::bitset<8> bitset;   f >> bitset;   return bitset; }   int main() {   const std::bitset<8> b(std::string("01010101"));   const std::string filename{"tmp.txt"};   BitsetToFile(b,filename);    const std::bitset<8> c{FileToBitset(filename)};   assert(b == c); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
