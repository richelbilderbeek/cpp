
 

 

 

 

 

([C++](Cpp.md)) [left shift count &gt;= width of type](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.md)
========================================================================================================================

 

[left shift count &gt;= width of
type](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.md)
is a [compile warning](CppCompileWarning.md) when [bit
shifting](CppBitShft.md) too much up:

 

  ----------------------------------------------------------------------------------------
  ` #include <cinttypes>  int main() {   const int64_t i = (1 << 63); //Gives warning }`
  ----------------------------------------------------------------------------------------

 

The code shown, however, might give this [compile
warning](CppCompileWarning.md) unexpectedly. Sure, a 1 shifted 63 times
up will fit in a 64-bit int. But the 1 itself must be 64 bit as well:

 

  --------------------------------------------------------------------------
  ` #include <cinttypes>  int main() {   const int64_t i = (1LL << 63); }`
  --------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.md)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.md)

[Operating system(s) or programming environment(s)](CppOs.md)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.md) 12.10 (quantal)

[IDE(s)](CppIde.md):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.md) 2.5.2

[Project type](CppQtProjectType.md):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.md)

[C++ standard](CppStandard.md):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.md)

[Compiler(s)](CppCompiler.md):

-   [G++](CppGpp.md) 4.7.2

[Libraries](CppLibrary.md) used:

-   ![STL](PicStl.png) [STL](CppStl.md): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.pro
--------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` TEMPLATE = app QMAKE_CXXFLAGS += -std=c++11 -Wall -Wextra -Weffc++ -Werror CONFIG += console CONFIG -= qt SOURCES += main.cpp`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

main.cpp
--------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cinttypes> #include <iostream>  int main() {   //const int64_t i = (1 << 63); //Gives warning   const int64_t i = (1LL << 63);   std::cout << i << '\n'; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType' (zip)](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.md)

 

 

 

 

 

 

