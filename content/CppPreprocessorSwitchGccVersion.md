
 

 

 

 

 

([C++](Cpp.md)) [PreprocessorSwitchGccVersion](CppPreprocessorSwitchGccVersion.md)
====================================================================================

 

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

 

[CppPreprocessorSwitchGccVersion](CppPreprocessorSwitchGccVersion.md)
displays how to switch on the [GCC](CppGcc.md) version.

 

-   [Download the Qt Creator project
    'CppPreprocessorSwitchGccVersion' (zip)](CppPreprocessorSwitchGccVersion.zip)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppPreprocessorSwitchGccVersion/CppPreprocessorSwitchGccVersion.pro
--------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppPreprocessorSwitchGccVersion/main.cpp
------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------
  `  #if !(__GNUC__ >= 4 && __GNUC_MINOR__ >= 9) #warning Newest compiler #else #error Your compiler is older than mine #endif  int main() { }`
  -----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

