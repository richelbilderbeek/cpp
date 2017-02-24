



 

 

 

 

 

([C++](Cpp.htm)) [Urho3dExample3](CppUrho3dExample3.htm)
========================================================

 

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

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppUrho3dExample3/CppUrho3dExample3.pro
----------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../Libraries/Urho3D/Urho3d.pri)  QMAKE_CXXFLAGS += -std=c++11  SOURCES += \   ../../Libraries/Urho3D/Source/Samples/03_Sprites/Sprites.cpp  HEADERS += \   ../../Libraries/Urho3D/Source/Samples/03_Sprites/Sprites.h  TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppUrho3dExample3/main.cpp
----------------------------

 

  ------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  using namespace std;  int main() {   cout << "Hello World!" << endl;   return 0; }`
  ------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
