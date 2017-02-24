
 

 

 

 

 

([C++](Cpp.md)) [MxeExample2](CppMxeExample2.md)
==================================================

 

![C++11](PicCpp11.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[MXE example 2: Hello World C++11](CppMxeExample2.md) is an
[MXE](CppMxe.md) [example](CppExample.md) to
[cross-compile](CppCrossCompile.md) a [Hello World
C++11](CppHelloWorldCpp11.md) program from [GNU/Linux](CppLinux.md) to
[Windows](CppWindows.md).

 

-   [Download the Qt Creator project
    'CppMxeExample2' (zip)](CppMxeExample2.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMxeExample2/CppMxeExample2.pro
----------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core QT       -= gui QMAKE_CXXFLAGS += -std=c++0x CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMxeExample2/main.cpp
-------------------------

 

  --------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const auto s = "Hello C++0x";   std::cout << s << '\n'; }`
  --------------------------------------------------------------------------------------------------

 

 

 

 

 

 

