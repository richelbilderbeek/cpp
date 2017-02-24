



 

 

 

 

 

([C++](Cpp.htm)) [PreprocessorSwitchGccVersion](CppPreprocessorSwitchGccVersion.htm)
====================================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[CppPreprocessorSwitchGccVersion](CppPreprocessorSwitchGccVersion.htm)
displays how to switch on the [GCC](CppGcc.htm) version.

 

-   [Download the Qt Creator project
    'CppPreprocessorSwitchGccVersion' (zip)](CppPreprocessorSwitchGccVersion.zip)

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

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.9.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppPreprocessorSwitchGccVersion/CppPreprocessorSwitchGccVersion.pro
--------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppPreprocessorSwitchGccVersion/main.cpp
------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------
  `  #if !(__GNUC__ >= 4 && __GNUC_MINOR__ >= 9) #warning Newest compiler #else #error Your compiler is older than mine #endif  int main() { }`
  -----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
