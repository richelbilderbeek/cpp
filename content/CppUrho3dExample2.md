
 

 

 

 

 

([C++](Cpp.md)) [Urho3dExample2](CppUrho3dExample2.md)
========================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppUrho3dExample2/CppUrho3dExample2.pro
----------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../Libraries/Urho3d.pri)  QMAKE_CXXFLAGS += -std=c++11  SOURCES += \   ../../Libraries/Urho3D/Source/Samples/02_HelloGUI/HelloGUI.cpp  HEADERS += \   ../../Libraries/Urho3D/Source/Samples/02_HelloGUI/HelloGUI.h  TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppUrho3dExample2/main.cpp
----------------------------

 

  ------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  using namespace std;  int main() {   cout << "Hello World!" << endl;   return 0; }`
  ------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 



