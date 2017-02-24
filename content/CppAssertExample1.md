



 

 

 

 

 

([C++](Cpp.htm)) [AssertExample1](CppAssertExample1.htm)
========================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

[assert example 1: basics](CppAssertExample1.htm) is an
[assert](CppAssert.htm) [example](CppExample.htm).

 

A division will only succeed if the denominator is unequal to zero. In
your code, you will have to take care that a division by zero never
occurs. Using [assert](CppAssert.htm), as shown in the code below, will
take you to the problem directly.

 

-   [Download the Qt Creator project
    'CppAssertExample1' (zip)](CppAssertExample1.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppAssertExample1/CppAssertExample1.pro
----------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) #Or use the code below # QT += core # QT += gui # greaterThan(QT_MAJOR_VERSION, 4): QT += widgets # CONFIG   += console # CONFIG   -= app_bundle # TEMPLATE = app # CONFIG(release, debug|release) { #   DEFINES += NDEBUG NTRACE_BILDERBIKKEL # } # QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ # unix { #   QMAKE_CXXFLAGS += -Werror # }  SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppAssertExample1/main.cpp
----------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>  int main() {   const double numerator = 1.0;   const double denominator = 0.0;   assert(denominator != 0.0);   const double result = numerator / denominator;   std::cout << result << std::endl; }  /* Screen output with 'Projects | Run | Run in terminal' checked  Assertion failed!  Program: E:\Projects\Test\build-CppAssert-Desktop_Qt_5_1_0_MinGW_32bit-Debug\deb ug\CppAssert.exe File: ../CppAssert/main.cpp, Line 7  Expression: denominator != 0.0  This application has requested the Runtime to terminate it in an unusual way. Please contact the application's support team for more information. Press <RETURN> to close this window...  */  /* Screen output with 'Projects | Run | Run in terminal' unchecked  Starting E:\Projects\Test\build-CppAssert-Desktop_Qt_5_1_0_MinGW_32bit-Debug\debug\CppAssert.exe... Cannot retrieve debugging output.  This application has requested the Runtime to terminate it in an unusual way. Please contact the application's support team for more information. E:\Projects\Test\build-CppAssert-Desktop_Qt_5_1_0_MinGW_32bit-Debug\debug\CppAssert.exe exited with code 3  */`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
