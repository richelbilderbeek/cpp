



 

 

 

 

 

([C++](Cpp.md)) [gnuplot example 1: creating and saving a plot](CppGnuplotExample1.md)
========================================================================================

 

[gnuplot example 1](CppGnuplotExample1.md) is a
[gnuplot](CppGnuplot.md) example.

 

-   [View a screenshot of this example (png)](CppGnuplotExample1.png)
-   [Download the Qt Creator project
    'CppGnuplotExample1' (zip)](CppGnuplotExample1.zip)

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.04 (precise)
-   ![Windows](PicWindows.png) [Windows](CppWindows.md) XP

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.4.1

[Project type](CppQtProjectType.md):

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.6.3

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.6.3

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppGnuplotExample1.pro
---------------------------------------------------------------

 

  ----------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG += qt SOURCES += main.cpp`
  ----------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <fstream>  #include <string>  #include <cstdlib>    int main()  {    #ifdef WIN32    const std::string exe = "C:\\Progra~1\\gnuplot\\bin\\gnuplot.exe";    #else    const std::string exe = "gnuplot";    #endif      const std::string filename = "test.txt";    {      std::ofstream f(filename.c_str());        f <<        "set terminal pngcairo\n"        "set output 'test.png'\n"        "set key inside left top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 1.000\n"        "set samples 50, 50\n"        "plot [-10:10] sin(x),atan(x),cos(atan(x))";    }      const std::string cmd = exe + " " + filename;      std::system(cmd.c_str());      }  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
