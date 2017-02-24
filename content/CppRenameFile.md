



 

 

 

 

 

([C++](Cpp.htm)) [RenameFile](CppRenameFile.htm)
================================================

 

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

 

 

 

 

 

[Qt project file](CppQtProjectFile.htm): ./CppRenameFile/CppRenameFile.pro
--------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------
  ` TEMPLATE = app CONFIG += console CONFIG -= app_bundle CONFIG -= qt  SOURCES += main.cpp`
  --------------------------------------------------------------------------------------------

 

 

 

 

 

./CppRenameFile/main.cpp
------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream> #include <string>  bool IsRegularFile(const std::string& filename);  ///Delete a file //From http://www.richelbilderbeek.nl/CppDeleteFile.htm void DeleteFile(const std::string& filename) {   std::remove(filename.c_str());   assert(!IsRegularFile(filename));  }  ///Determines if a filename is a regular file ///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm bool IsRegularFile(const std::string& filename) {   std::fstream f;   f.open(filename.c_str(),std::ios::in);   return f.is_open(); }  ///Renames a file //From http://www.richelbilderbeek.nl/CppRenameFile.htm void RenameFile(const std::string& from, const std::string& to) {   assert( IsRegularFile(from) && "Cannot rename a non-existing file");   assert(!IsRegularFile(to)   && "Cannot rename to an existing file");   std::rename(from.c_str(),to.c_str());   assert(!IsRegularFile(from));   assert( IsRegularFile(to)  ); }  int main() {   const std::string filename_from = "tmp.txt";   const std::string filename_to   = "tmp2.txt";    //Delete possible old temporary files   DeleteFile(filename_from);   DeleteFile(filename_to);    //Create new file   {     std::ofstream f(filename_from.c_str());     f << "TMP";     f.close();   }    //Only filename_from will exist   assert( IsRegularFile(filename_from));   assert(!IsRegularFile(filename_to));    //Rename   RenameFile(filename_from,filename_to);    //Only filename_to will exist   assert(!IsRegularFile(filename_from));   assert( IsRegularFile(filename_to));  }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
