



 

 

 

 

 

([C++](Cpp.htm)) [StdRandom\_shuffleExample1](CppStdRandom_shuffleExample1.htm)
===============================================================================

 

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

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdRandom\_shuffleExample1/CppStdRandom\_shuffleExample1.pro
----------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui  CONFIG   += console CONFIG   -= app_bundle  TEMPLATE = app  SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRandom\_shuffleExample1/main.cpp
----------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  int main() {   std::vector<int> v;   for (int i=0; i!=5; ++i) v.push_back(i);    std::cout << "Before shuffling:\n";    for(int i=0;i!=5; ++i) std::cout << v[i] << '\n';    std::random_shuffle(v.begin(),v.end());    std::cout << "After shuffling:\n";    for(int i=0;i!=5; ++i) std::cout << v[i] << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
