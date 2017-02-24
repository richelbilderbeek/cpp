
 

 

 

 

 

([C++](Cpp.md)) [StdRandom\_shuffleExample1](CppStdRandom_shuffleExample1.md)
===============================================================================

 

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

-   ![Qt](PicQt.png) [Qt](CppQt.md): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdRandom\_shuffleExample1/CppStdRandom\_shuffleExample1.pro
----------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui  CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRandom\_shuffleExample1/main.cpp
----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  int main() {   std::vector<int> v;   for (int i=0; i!=5; ++i) v.push_back(i);    std::cout << "Before shuffling:\n";    for(int i=0;i!=5; ++i) std::cout << v[i] << '\n';    std::random_shuffle(v.begin(),v.end());    std::cout << "After shuffling:\n";    for(int i=0;i!=5; ++i) std::cout << v[i] << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
