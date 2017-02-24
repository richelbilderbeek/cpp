[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [AssertExample2](CppAssertExample2.htm)
========================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[assert example 2: basics with informative
output](CppAssertExample2.htm) is an [assert](CppAssert.htm)
[example](CppExample.htm).

 

-   [Download the Qt Creator project
    'CppAssertExample2' (zip)](CppAssertExample2.zip)

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

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppAssertExample2/CppAssertExample2.pro
----------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppAssertExample2/main.cpp
----------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <csignal> #include <cstdlib> #include <iostream>  void onAbort(int) {   std::exit(1); }  int main() {   //Connect the abort signal to the OnAbort, to obtain informative   //screen output with 'Projects | Run | Run in terminal' unchecked   std::signal(SIGABRT,onAbort);    const double numerator = 1.0;   const double denominator = 0.0;   assert(denominator != 0.0);   const double result = numerator / denominator;   std::cout << result << std::endl; }  /* Screen output with 'Projects | Run | Run in terminal' checked  Assertion failed!  Program: E:\Projects\Test\build-CppAssertExample2-Desktop_Qt_5_1_0_MinGW_32bit-D ebug\debug\CppAssertExample2.exe File: ../CppAssertExample2/main.cpp, Line 19  Expression: denominator != 0.0  This application has requested the Runtime to terminate it in an unusual way. Please contact the application's support team for more information. Press <RETURN> to close this window...  */    /* Screen output with 'Projects | Run | Run in terminal' unchecked  Starting E:\Projects\Test\build-CppAssertExample2-Desktop_Qt_5_1_0_MinGW_32bit-Debug\debug\CppAssertExample2.exe... Cannot retrieve debugging output.  This application has requested the Runtime to terminate it in an unusual way. Please contact the application's support team for more information. Assertion failed!  Program: E:\Projects\Test\build-CppAssertExample2-Desktop_Qt_5_1_0_MinGW_32bit-Debug\debug\CppAssertExample2.exe File: ../CppAssertExample2/main.cpp, Line 27  Expression: denominator != 0.0 E:\Projects\Test\build-CppAssertExample2-Desktop_Qt_5_1_0_MinGW_32bit-Debug\debug\CppAssertExample2.exe exited with code 1  */`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
