
 

 

 

 

 

([C++](Cpp.md)) [StdShuffleExample1](CppStdShuffleExample1.md)
================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStdShuffleExample1/CppStdShuffleExample1.pro
------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------
  ` include("../../ConsoleApplication.pri")  SOURCES += main.cpp`
  -----------------------------------------------------------------

 

 

 

 

 

./CppStdShuffleExample1/main.cpp
--------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  int main() {   std::vector<int> v = {0, 1, 2, 3, 4};    //Initialize std::mt19937 with a random number   std::random_device rd;   std::mt19937 g(rd());    std::cout << "Before shuffling:\n";    for(const int i:v) std::cout << i << '\n';    std::shuffle(v.begin(),v.end(),g);    std::cout << "After shuffling:\n";    for(const int i:v) std::cout << i << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

