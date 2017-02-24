

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [MxeExample5](CppMxeExample5.htm)
==================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[MXE example 5: Hello Boost.Regex](CppMxeExample5.htm) is an
[MXE](CppMxe.htm) example to [cross-compile](CppCrossCompile.htm) a
[Hello Boost](CppHelloBoost.htm) program from [GNU/Linux](CppLinux.htm)
to [Windows](CppWindows.htm).

 

Note that for me, this code does not cross-compile.

 

-   [Download the Qt Creator project
    'CppMxeExample5' (zip)](CppMxeExample5.zip)

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.htm): version 1.55
-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppMxeExample5/CppMxeExample5.pro
----------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------
  ` QT       -= core QT       -= gui LIBS += -lboost_regex CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMxeExample5/main.cpp
-------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/regex.hpp>  int main(int argc, char* argv[]) {   boost::regex r("Hello Boost.Regex");   std::cout << r.str() << '\n'; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMxeExample5/test.sh
------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/sh # Calls crosscompiletowindows and cleans up afterwards  ./crosscompiletowindows.sh  rm Makefile* #rm *.o #rm -r release #rm -r debug`
  ---------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
