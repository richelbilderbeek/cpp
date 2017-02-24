

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [gnuplot example 2: creating and displaying a plot](CppGnuplotExample2.htm)
============================================================================================

 

[gnuplot example 2](CppGnuplotExample2.htm) is a
[gnuplot](CppGnuplot.htm) example.

 

-   [View a screenshot of this example (png)](CppGnuplotExample2.png)
-   [Download the Qt Creator project
    'CppGnuplotExample2' (zip)](CppGnuplotExample2.zip)

 

 

 

 

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppGnuplotExample2.pro
---------------------------------------------------------------

 

  -------------------------------------------------------------------------------
  ` TEMPLATE = app  CONFIG += console  CONFIG += qt    SOURCES += main.cpp    `
  -------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <fstream>  #include <string>  #include <cstdlib>  #include <QApplication>  #include <QLabel>    int main(int argc, char *argv[])  {    QApplication a(argc,argv);      #ifdef WIN32    const std::string exe = "C:\\Progra~1\\gnuplot\\bin\\gnuplot.exe";    #else    const std::string exe = "gnuplot";    #endif      const std::string cmd_filename = "test.txt";    const std::string pic_filename = "test.png";    {      std::ofstream f(cmd_filename.c_str());        f <<        "set terminal pngcairo\n"        "set output '" << pic_filename <<"'\n"        "set key inside left top vertical Right noreverse enhanced autotitles box linetype -1 linewidth 1.000\n"        "set samples 50, 50\n"        "plot [-10:10] sin(x),atan(x),cos(atan(x))";    }      const std::string cmd = exe + " " + cmd_filename;      std::system(cmd.c_str());      QLabel label;    label.setPixmap(QPixmap(pic_filename.c_str()));    label.show();      return a.exec();  }  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
