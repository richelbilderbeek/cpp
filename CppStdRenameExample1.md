[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdRenameExample1](CppStdRenameExample1.htm)
==============================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdRenameExample1/CppStdRenameExample1.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRenameExample1/main.cpp
-------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream>   ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFile(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  int main() {   const std::string before = "a.tmp";   const std::string after  = "b.tmp";    //Delete possible previous files   std::remove(before.c_str());   std::remove(after.c_str());   assert(!IsRegularFile(before));   assert(!IsRegularFile(after));    //Create before   {     std::ofstream f(before.c_str());   }   assert( IsRegularFile(before));   assert(!IsRegularFile(after));    //Rename before to after   {     std::rename(before.c_str(),after.c_str());   }   assert(!IsRegularFile(before));   assert( IsRegularFile(after));    //Delete files   std::remove(before.c_str());   std::remove(after.c_str());   assert(!IsRegularFile(before));   assert(!IsRegularFile(after)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
