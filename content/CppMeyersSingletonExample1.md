
 

 

 

 

 

([C++](Cpp.md)) [MeyersSingletonExample1](CppMeyersSingletonExample1.md)
==========================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMeyersSingletonExample1/CppMeyersSingletonExample1.pro
----------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri")  SOURCES += main.cpp`
  -----------------------------------------------------------------

 

 

 

 

 

./CppMeyersSingletonExample1/main.cpp
-------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------
  ` struct Widget {};  //Meyers' Singleton Widget& instance() {   static Widget w;   return w; }  int main() {   const auto w = instance(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

