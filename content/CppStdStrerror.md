
 

 

 

 

 

([C++](Cpp.md)) [std::strerror](CppStrerror.md)
=================================================

 

[std::strerror](CppStrerror.md) is a [function](CppFunction.md) to
convert the C-style error code (caused by C [functions](CppFunction.md)
like [std::fopen](CppStdFopen.md)) to a [std::string](CppStdString.md).

 

-   [Download the Qt Creator project
    'CppStrerror' (zip)](CppStrerror.zip)
-

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.04 (precise)

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppStrerror.pro
--------------------------------------------------------

 

  -------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= qt SOURCES += main.cpp TARGET = CppStrerror`
  -------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  //For the assert macro #include <cerrno>   //For the macro errno #include <cstdio>   //For std::fopen #include <cstring>  //For std::strerror #include <string>  int main () {   const FILE * const file = std::fopen("","r");   assert(!file);   assert(std::strerror(errno) == std::string("No such file or directory")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

