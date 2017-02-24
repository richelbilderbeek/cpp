
 

 

 

 

 

([C++](Cpp.md)) ![Qt Creator](PicQtCreator.png)![Wine](PicWine.png)![Ubuntu](PicUbuntu.png)![Desktop](PicDesktop.png) [Hello World using (a Windows version of) Qt Creator under Wine under Ubuntu](CppHelloWorldQtCreatorWineUbuntu.md)
==========================================================================================================================================================================================================================================

 

[Hello World](CppHelloWorld.md) (or 'The Hello World program') is a
standard example program to see if your programming environment works.
Note that this example code is not standarized, so multiple and similar
variants are on the Internet. A more demanding example is [Hello
Boost](CppHelloBoost.md), which also tests if the [Boost](CppBoost.md)
[libraries](CppLibrary.md) are installed correctly.

 

-   [View a screenshot of
    'CppHelloWorldQtCreatorWineUbuntu' (png)](CppHelloWorldQtCreatorWineUbuntu.png)
-   [Download the 'CppHelloWorldQtCreatorWineUbuntu' Windows
    executable (zip)](CppHelloWorldQtCreatorWineUbuntuExe.zip)
-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorWineUbuntu' (zip)](CppHelloWorldQtCreatorWineUbuntu.zip)

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.md) 10.10 (maverick)
-   ![Wine](PicWine.png) [Wine](CppWine.md) 1.3.4

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.0.0

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.4.5

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.4.5

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppHelloWorld.pro
----------------------------------------------------------

 

The [Qt project file](CppQtProjectFile.md) used is a default-created
[console application](CppConsoleApplication.md) [Qt project
file](CppQtProjectFile.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-29T14:58:49 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloWorld CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

A default [Hello World](CppHelloWorld.md) [main](CppMain.md):

 

  ------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Hello World\n"; }`
  ------------------------------------------------------------------------

 

 

 

 

 

Run Settings
------------

 

Do 'Projects (CTRL-5) | Run | Check 'Run in terminal' ([screenshot
(png)](CppHelloWorldQtCreatorWineUbuntuRunSettings.png)).

 

If this step is forgotten, no output will be shown.

 

 

 

 

 

Starting the program
--------------------

 

Click 'Run' in the bottom-left of press CTRL-R.

 

-   [View a screenshot of
    'CppHelloWorldQtCreatorWineUbuntu' (png)](CppHelloWorldQtCreatorWineUbuntu.png)
-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorWineUbuntu' (zip)](CppHelloWorldQtCreatorWineUbuntu.zip)

 

 

 

 

 

 

