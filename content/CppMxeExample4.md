



 

 

 

 

 

([C++](Cpp.md)) [MxeExample4](CppMxeExample4.md)
==================================================

 

![Boost](PicBoost.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[MXE example 4: Hello Boost](CppMxeExample4.md) is an [MXE](CppMxe.md)
example to [cross-compile](CppCrossCompile.md) a [Hello
Boost](CppHelloBoost.md) program from [GNU/Linux](CppLinux.md) to
[Windows](CppWindows.md).

 

-   [Download the Qt Creator project
    'CppMxeExample4' (zip)](CppMxeExample4.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppMxeExample4/CppMxeExample4.pro
----------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------
  ` QT       -= core QT       -= gui CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMxeExample4/main.cpp
-------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <boost/lexical_cast.hpp>  int main() {   if (boost::lexical_cast<std::string>(123) == "123")   {     std::cout << "Hello Boost" << '\n';   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppMxeExample4/test.sh
------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #!/bin/bash # Calls crosscompiletowindows and cleans up afterwards myfile="crosscompiletowindows.sh"  if [ -e $myfile ] then   echo "'$myfile' found" else   echo "'$myfile' not found" fi  ./$myfile  rm Makefile* rm *.o #rm -r release #rm -r debug`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
