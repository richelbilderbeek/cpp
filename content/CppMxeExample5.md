
 

 

 

 

 

([C++](Cpp.md)) [MxeExample5](CppMxeExample5.md)
==================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[MXE example 5: Hello Boost.Regex](CppMxeExample5.md) is an
[MXE](CppMxe.md) example to [cross-compile](CppCrossCompile.md) a
[Hello Boost](CppHelloBoost.md) program from [GNU/Linux](CppLinux.md)
to [Windows](CppWindows.md).

 

Note that for me, this code does not cross-compile.

 

-   [Download the Qt Creator project
    'CppMxeExample5' (zip)](CppMxeExample5.zip)

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

-   ![Boost](PicBoost.png) [Boost](CppBoost.md): version 1.55
-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMxeExample5/CppMxeExample5.pro
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

 

 

 

 

 

 

