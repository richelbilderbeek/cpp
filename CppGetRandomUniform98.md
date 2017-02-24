[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetRandomUniform98](CppGetRandomUniform98.htm)
================================================================

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 15.04 (vivid)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 3.1.1

[Project type](CppQtProjectType.htm):

-   ![GUI](PicGui.png) [GUI application](CppGuiApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.9.2

[Libraries](CppLibrary.htm) used:

-   ![Qt](PicQt.png) [Qt](CppQt.htm): version 5.4.1 (32 bit)
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppGetRandomUniform98/CppGetRandomUniform98.pro
------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` SOURCES += main.cpp  # Go ahead and use Qt.Core: it is about as platform-independent as # the STL and Boost QT += core  # Go ahead and use Qt.Gui: it is about as platform-independent as # the STL and Boost. It is needed for QImage QT += gui  # Don't define widgets: it would defy the purpose of this console # application to work non-GUI #greaterThan(QT_MAJOR_VERSION, 4): QT += widgets  CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app  # # # Type of compile # #  CONFIG(release, debug|release) {   DEFINES += NDEBUG NTRACE_BILDERBIKKEL }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGetRandomUniform98/main.cpp
--------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream>  ///GetRandomUniform98 draws a random number from 0.0 to and excluding 1.0. ///GetRandomUniform98 is deprecated from C++11, use GetRandomUniform instead. ///From http://www.richelbilderbeek.nl/CppGetRandomUniform98.htm #if __cplusplus >= 201103L [[deprecated]] #endif double GetRandomUniform98() {   return static_cast<double>(std::rand())/static_cast<double>(RAND_MAX); }  int main() {   for (int i=0; i!=10; ++i)   {     std::cout << GetRandomUniform98() << '\n';   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
