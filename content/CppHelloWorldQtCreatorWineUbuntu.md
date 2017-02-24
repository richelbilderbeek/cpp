



 

 

 

 

 

([C++](Cpp.htm)) ![Qt Creator](PicQtCreator.png)![Wine](PicWine.png)![Ubuntu](PicUbuntu.png)![Desktop](PicDesktop.png) [Hello World using (a Windows version of) Qt Creator under Wine under Ubuntu](CppHelloWorldQtCreatorWineUbuntu.htm)
==========================================================================================================================================================================================================================================

 

[Hello World](CppHelloWorld.htm) (or 'The Hello World program') is a
standard example program to see if your programming environment works.
Note that this example code is not standarized, so multiple and similar
variants are on the Internet. A more demanding example is [Hello
Boost](CppHelloBoost.htm), which also tests if the [Boost](CppBoost.htm)
[libraries](CppLibrary.htm) are installed correctly.

 

-   [View a screenshot of
    'CppHelloWorldQtCreatorWineUbuntu' (png)](CppHelloWorldQtCreatorWineUbuntu.png)
-   [Download the 'CppHelloWorldQtCreatorWineUbuntu' Windows
    executable (zip)](CppHelloWorldQtCreatorWineUbuntuExe.zip)
-   [Download the Qt Creator project
    'CppHelloWorldQtCreatorWineUbuntu' (zip)](CppHelloWorldQtCreatorWineUbuntu.zip)

 

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Ubuntu](PicUbuntu.png) [Ubuntu](CppUbuntu.htm) 10.10 (maverick)
-   ![Wine](PicWine.png) [Wine](CppWine.htm) 1.3.4

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.0.0

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++98](PicCpp98.png) [C++98](Cpp98.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.4.5

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.4.5

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppHelloWorld.pro
----------------------------------------------------------

 

The [Qt project file](CppQtProjectFile.htm) used is a default-created
[console application](CppConsoleApplication.htm) [Qt project
file](CppQtProjectFile.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #------------------------------------------------- # # Project created by QtCreator 2010-09-29T14:58:49 # #------------------------------------------------- QT       += core QT       -= gui TARGET = CppHelloWorld CONFIG   += console CONFIG   -= app_bundle TEMPLATE = app SOURCES += main.cpp`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

A default [Hello World](CppHelloWorld.htm) [main](CppMain.htm):

 

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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
