
 

 

 

 

 

([C++](Cpp.md)) [StdVectorExample4](CppStdVectorExample4.md)
==============================================================

 

![Cpp98](PicCpp98.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)

 

[std::vector example 4: remove an element with preserving the
order](CppVectorExample4.md) is a [std::vector](CppVector.md) example
that demonstrates how to remove an element with preserving the order.

 

-   [Download the Qt Creator project
    'CppVectorExample4' (zip)](CppVectorExample4.zip)

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.9.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdVectorExample4/CppStdVectorExample4.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ unix {   QMAKE_CXXFLAGS += -Werror }  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdVectorExample4/main.cpp
-------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int main() {   std::vector<int> v { 1,4,9,16,25 };    const std::size_t index = 2;   assert(v[index] == 9 && "Erase the 9");   v.erase( v.begin() + index);    const std::vector<int> expected { 1,4,16,25 };   assert(v == expected ); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

