



 

 

 

 

 

([C++](Cpp.htm)) [Tr1ArrayExample1](CppTr1ArrayExample1.htm)
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

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.8.1

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.8.1

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppTr1ArrayExample1/CppTr1ArrayExample1.pro
--------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  #QMAKE_CXXFLAGS += -std=c++11`
  ---------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppTr1ArrayExample1/main.cpp
------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <tr1/array> #include <cassert>  int main() {   const int sz = 3;   std::tr1::array<int,sz> v;   v[0] = 0;   v[1] = 1;   v[2] = 2;   assert(v.size() == sz);   assert(v[0] == 0);   assert(v[1] == 1);   assert(v[2] == 2); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
