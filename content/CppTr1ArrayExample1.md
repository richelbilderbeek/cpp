
 

 

 

 

 

([C++](Cpp.md)) [Tr1ArrayExample1](CppTr1ArrayExample1.md)
============================================================

 

Technical facts
---------------

 

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 13.10 (saucy)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md)
    unknown

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.8.1

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.8.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppTr1ArrayExample1/CppTr1ArrayExample1.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  #QMAKE_CXXFLAGS += -std=c++11`
  ---------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTr1ArrayExample1/main.cpp
------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <tr1/array> #include <cassert>  int main() {   const int sz = 3;   std::tr1::array<int,sz> v;   v[0] = 0;   v[1] = 1;   v[2] = 2;   assert(v.size() == sz);   assert(v[0] == 0);   assert(v[1] == 1);   assert(v[2] == 2); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
