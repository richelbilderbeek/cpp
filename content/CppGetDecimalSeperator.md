
 

 

 

 

 

([C++](Cpp.md)) [GetDecimalSeperator](CppGetDecimalSeperator.md)
==================================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.md): ./CppGetDecimalSeperator/CppGetDecimalSeperator.pro
--------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------
  ` include(../../ConsoleApplication.pri) include(../../Libraries/BoostAll.pri)  SOURCES += main.cpp`
  -----------------------------------------------------------------------------------------------------

 

 

 

 

 

./CppGetDecimalSeperator/main.cpp
---------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <locale> #include <iostream> #include <sstream>  ///Obtain the decimal seperator of the current std::locale from std::cout //From http://www.richelbilderbeek.nl/CppGetDecimalSeperator.htm std::string GetDecimalSeperator() noexcept {   const auto c     = std::use_facet<std::numpunct<char>>(         std::cout.getloc()       ).decimal_point()     ;   std::string s(1,c);   return s; }  int main() {   std::cout << GetDecimalSeperator() << '\n'; } /* Screen output:  .  */`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
