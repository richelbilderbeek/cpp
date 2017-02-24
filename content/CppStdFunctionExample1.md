



 

 

 

 

 

([C++](Cpp.md)) [StdFunctionExample1](CppStdFunctionExample1.md)
==================================================================

 

![C++11](PicCpp11.png)![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[std::function example 1: global functions](CppStdFunctionExample1.md)
is a [std::function](CppStdFunction.md) [example](CppExample.md).

 

-   [Download the Qt Creator project
    'CppStdFunctionExample1' (zip)](CppStdFunctionExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdFunctionExample1/CppStdFunctionExample1.pro
--------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp  # # # Type of compile # #  CONFIG(debug, debug|release) {   message(Debug mode) }  CONFIG(release, debug|release) {   message(Release mode)    #Remove all asserts and TRACE   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }  # # # Platform specific # #  # # # Compiler flags # # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra  unix {   QMAKE_CXXFLAGS += -Werror }  # # # Boost # #  unix {   message(Unix: Boost already in include path) }  win32 {   message(Windows: add Boost to include path)   INCLUDEPATH += \     E:/Projects/Libraries/boost_1_54_0 }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdFunctionExample1/main.cpp
---------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <iostream> #include <vector>  int f1(const int i) { return i + 1; } int f2(const int i) { return i + 2; } int f3(const int i) { return i + 3; }  int main() {   std::vector<std::function<int(const int)> > v;   v.push_back(f1);   v.push_back(f2);   v.push_back(f3);   std::random_shuffle(v.begin(),v.end());    int x = 0;   for(const std::function<int(const int)>& f: v)   {     x = f(x);     std::cout << x << '\n';   } }  /* Possible screen output:  1 4 6 Press <RETURN> to close this window...  */`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
