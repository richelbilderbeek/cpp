[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [gnuplot example 1: creating and saving a plot](CppGnuplotExample1.htm)
========================================================================================

 

[gnuplot example 1](CppGnuplotExample1.htm) is a
[gnuplot](CppGnuplot.htm) example.

 

-   [View a screenshot of this example (png)](CppGnuplotExample1.png)
-   [Download the Qt Creator project
    'CppGnuplotExample1' (zip)](CppGnuplotExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.04 (precise)
-   ![Windows](PicWindows.png) [Windows](CppWindows.htm) XP

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.4.1

[Project type](CppQtProjectType.htm):

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.6.3

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppGnuplotExample1.pro
---------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG += qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <fstream>  #include <string>  #include <cstdlib>    int main()  {    #ifdef WIN32    const std::string exe = "C:\\Progra~1\\gnuplot\\bin\\gnuplot.exe";    #else    const std::string exe = "gnuplot";    #endif      const std::string filename = "test.txt";    {      std::ofstream f(filename.c_str());        f <<        "set terminal pngcairo\n"        "set output 'test.png'\n"        "set key inside left top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 1.000\n"        "set samples 50, 50\n"        "plot [-10:10] sin(x),atan(x),cos(atan(x))";    }      const std::string cmd = exe + " " + filename;      std::system(cmd.c_str());      }  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
