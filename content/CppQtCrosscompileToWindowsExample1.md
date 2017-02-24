[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [How to cross-compile a Qt Creator project from Ubuntu to a windows executable: example 1: Hello World](CppQtCrosscompileToWindowsExample1.htm)
================================================================================================================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Ubuntu](PicUbuntu.png)![to](PicTo.png)![Qt
Creator](PicQtCreator.png)![Windows](PicWindows.png)

 

This is example 1, and one of the solutions of answering the [Qt
FAQ](CppQtFaq.htm) [How to cross-compile a Qt Creator project from
Ubuntu to a windows executable?](CppQtCrosscompileToWindows.htm), thanks
to \[1\].

 

 

 

 

 

Downloads
---------

 

-   [Download the Qt Creator project
    'CppQtCrosscompileToWindowsExample1' (zip)](CppQtCrosscompileToWindowsExample1.zip)
-   [Download the resulting Windows executable
    'CppQtCrosscompileToWindowsExample1.exe' (exe)](CppQtCrosscompileToWindowsExample1.exe)

 

 

 

 

 

Project information
-------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm): console application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Qt](CppQt.htm): version 4.7.0 (32 bit)
-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm)
---------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-23T19:13:58 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppQtCrosscompileToWindowsExample1 CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout <<     "I am developed under Unbuntu, "     "and I will run under Windows\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Process
-------

 

In an Ubuntu terminal, go to the folder containing main.cpp. Then type
the following:

 

  -----------------------------------------------
  ` i586-mingw32msvc-g++ -o MyWin.exe main.cpp`
  -----------------------------------------------

 

This successfully creates a Windows executable called MyWin.exe. I have
confirmed this to work on my old Windows computer.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

 

 

 

 

### \[1\] http://ubuntuforums.org/archive/index.php/t-626932.html

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` llonesmiz November 30th, 2007, 03:54 AM You can install mingw this way:  sudo apt-get install mingw32  and then you can simply compile using i586-mingw32msvc-gcc instead of gcc:  i586-mingw32msvc-gcc -o test.exe test.c  You can also use i586-mingw32msvc-g++ and related tools.  If you use any libraries in your program, you will either need to crosscompile them too or just download the precompiled binaries for windows.`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
