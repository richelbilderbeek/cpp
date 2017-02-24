[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StdRenameExample2](CppStdRenameExample2.htm)
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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppStdRenameExample2/CppStdRenameExample2.pro
----------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppStdRenameExample2/main.cpp
-------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream> #include <string>  bool IsRegularFile(const std::string& filename);  ///Delete a file //From http://www.richelbilderbeek.nl/CppDeleteFile.htm void DeleteFile(const std::string& filename) {   std::remove(filename.c_str());   assert(!IsRegularFile(filename));  }  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFile(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  int main() {   const std::string filename_from = "tmp.txt";   const std::string filename_to   = "tmp2.txt";    //Delete possible old temporary files   DeleteFile(filename_from);   DeleteFile(filename_to);    //Create new file   {     std::ofstream f(filename_from.c_str());     f << "TMP";     f.close();   }    //Only filename_from will exist   assert( IsRegularFile(filename_from));   assert(!IsRegularFile(filename_to));    //Rename   std::rename(filename_from.c_str(),filename_to.c_str());    //Only filename_to will exist   assert(!IsRegularFile(filename_from));   assert( IsRegularFile(filename_to));  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
