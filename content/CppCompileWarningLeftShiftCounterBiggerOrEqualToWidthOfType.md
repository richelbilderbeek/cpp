



 

 

 

 

 

([C++](Cpp.htm)) [left shift count &gt;= width of type](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.htm)
========================================================================================================================

 

[left shift count &gt;= width of
type](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.htm)
is a [compile warning](CppCompileWarning.htm) when [bit
shifting](CppBitShft.htm) too much up:

 

  ----------------------------------------------------------------------------------------
  ` #include <cinttypes>  int main() {   const int64_t i = (1 << 63); //Gives warning }`
  ----------------------------------------------------------------------------------------

 

The code shown, however, might give this [compile
warning](CppCompileWarning.htm) unexpectedly. Sure, a 1 shifted 63 times
up will fit in a 64-bit int. But the 1 itself must be 64 bit as well:

 

  --------------------------------------------------------------------------
  ` #include <cinttypes>  int main() {   const int64_t i = (1LL << 63); }`
  --------------------------------------------------------------------------

 

 

 

 

 

Technical facts
---------------

 

[Application type(s)](CppApplication.htm)

-   ![Desktop](PicDesktop.png) [Desktop
    application](CppDesktopApplication.htm)

[Operating system(s) or programming environment(s)](CppOs.htm)

-   ![Lubuntu](PicLubuntu.png) [Lubuntu](CppLubuntu.htm) 12.10 (quantal)

[IDE(s)](CppIde.htm):

-   ![Qt Creator](PicQtCreator.png) [Qt Creator](CppQtCreator.htm) 2.5.2

[Project type](CppQtProjectType.htm):

-   ![console](PicConsole.png) [Console
    application](CppConsoleApplication.htm)

[C++ standard](CppStandard.htm):

-   ![C++11](PicCpp11.png) [C++11](Cpp11.htm)

[Compiler(s)](CppCompiler.htm):

-   [G++](CppGpp.htm) 4.7.2

[Libraries](CppLibrary.htm) used:

-   ![STL](PicStl.png) [STL](CppStl.htm): GNU ISO C++ Library, version
    4.7.2

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.pro
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
    'CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType' (zip)](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.htm)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
