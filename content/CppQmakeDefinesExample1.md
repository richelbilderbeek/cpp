



 

 

 

 

 

([C++](Cpp.md)) [QmakeDefinesExample1](CppQmakeDefinesExample1.md)
====================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppQmakeDefinesExample1/CppQmakeDefinesExample1.pro
----------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # # QMAKE_CXXFLAGS += -std=c++1y -Wall -Wextra -Weffc++ # # #unix { #   QMAKE_CXXFLAGS += -Werror # #}  SOURCES += main.cpp  DEFINES += \   SHOW_A \   SHOW_B \   SHOW_C`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppQmakeDefinesExample1/main.cpp
----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   #ifdef SHOW_A   std::cout << "A";   #endif   #ifdef SHOW_B   std::cout << "B";   #endif   #ifdef SHOW_C   std::cout << "C";   #endif   #ifdef SHOW_D   std::cout << "D";   #endif   #ifdef SHOW_E   std::cout << "E";   #endif   std::cout << '\n'; }  /* Screen output:  ABC Press <RETURN> to close this window...  */`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
