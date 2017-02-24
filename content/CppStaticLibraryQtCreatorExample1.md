



 

 

 

 

 

([C++](Cpp.md)) [StaticLibraryQtCreatorExample1](CppStaticLibraryQtCreatorExample1.md)
========================================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStaticLibraryQtCreatorExample1/CppStaticLibraryQtCreatorExample1Application.pro
-----------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       += core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp  !exists(../build-CppStaticLibraryQtCreatorExample1Library-Desktop_Qt_5_1_1_MinGW_32bit-Debug/debug/libCppStaticLibraryQtCreatorExample1.a) {   error(Could not find correct path to built library) }  LIBS += ../build-CppStaticLibraryQtCreatorExample1Library-Desktop_Qt_5_1_1_MinGW_32bit-Debug/debug/libCppStaticLibraryQtCreatorExample1.a`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppStaticLibraryQtCreatorExample1/CppStaticLibraryQtCreatorExample1Library.pro
-------------------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core gui TARGET = CppStaticLibraryQtCreatorExample1 TEMPLATE = lib CONFIG += staticlib SOURCES += cppstaticlibraryqtcreatorexample1.cpp HEADERS += cppstaticlibraryqtcreatorexample1.h unix:!symbian {     maemo5 {         target.path = /opt/usr/lib     } else {         target.path = /usr/lib     }     INSTALLS += target }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStaticLibraryQtCreatorExample1/cppstaticlibraryqtcreatorexample1.h
-----------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #ifndef CPPSTATICLIBRARYQTCREATOREXAMPLE1_H #define CPPSTATICLIBRARYQTCREATOREXAMPLE1_H   class CppStaticLibraryQtCreatorExample1 { public:   CppStaticLibraryQtCreatorExample1();    void SayHello(); };  #endif // CPPSTATICLIBRARYQTCREATOREXAMPLE1_H`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStaticLibraryQtCreatorExample1/cppstaticlibraryqtcreatorexample1.cpp
-------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include "cppstaticlibraryqtcreatorexample1.h" #include <iostream>  CppStaticLibraryQtCreatorExample1::CppStaticLibraryQtCreatorExample1() {  }  void CppStaticLibraryQtCreatorExample1::SayHello() {   std::cout << "Hello\n"; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStaticLibraryQtCreatorExample1/main.cpp
--------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------
  ` #include "cppstaticlibraryqtcreatorexample1.h"  int main() {   CppStaticLibraryQtCreatorExample1().SayHello(); }`
  ---------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
