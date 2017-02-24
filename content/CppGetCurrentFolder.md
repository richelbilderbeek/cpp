



 

 

 

 

 

([C++](Cpp.htm)) [GetCurrentFolder](CppGetCurrentFolder.htm)
============================================================

 

[GetCurrentFolder](CppGetCurrentFolder.htm) is a [file
I/O](CppFileIo.htm) [code snippets](CppCodeSnippets.htm) to obtain the
name of the folder your application runs in.

 

-   [Download the Qt Creator project
    'GetCurrentFolder' (zip)](CppGetCurrentFolder.zip)

 

 

 

 

 

[GetCurrentFolder](CppGetCurrentFolder.htm) using the [STL](CppStl.htm) only
----------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  #include <string> #include <cassert>  //From http://www.richelbilderbeek.nl/CppGetPath.htm //Returns the path, without a trailing backslash '\' const std::string GetPath(const std::string& fileName) {   #ifndef USE_WINDOWS   const int endOfPathIndex = fileName.rfind("/",fileName.size());   #else   const int endOfPathIndex = fileName.rfind("\\",fileName.size());   #endif   assert(endOfPathIndex < static_cast<int>(fileName.size()));   return fileName.substr(0,endOfPathIndex); }  //From http://www.richelbilderbeek.nl/CppGetCurrentFolder.htm const std::string GetCurrentFolder(const std::string& s) {   return GetPath(s); }  int main(int argc, char *argv[]) {   std::cout << GetCurrentFolder(argv[0])  << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------------------------------------
  ` /home/richel/qtsdk-2010.04/bin/Projects/Website/CppGetCurrentFolder-build-desktop`
  --------------------------------------------------------------------------------------

 

 

 

 

 

[GetCurrentFolder](CppGetCurrentFolder.htm) using [Boost.Filesystem](CppFilesystem.htm)
---------------------------------------------------------------------------------------

 

This version is more elegant and portable.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream> #include <string> #include <boost/filesystem.hpp>  //From http://www.richelbilderbeek.nl/CppGetPath.htm const std::string GetPath(const std::string& filename) {   return boost::filesystem::path(filename).parent_path().string(); }  //From http://www.richelbilderbeek.nl/CppGetCurrentFolder.htm const std::string GetCurrentFolder(const std::string& s) {   return GetPath(s); }  int main(int argc, char *argv[]) {   argc; //To stop compiler warning about unused argument argc   assert(GetPath("/any_path/any_file.cpp")=="/any_path"); //non-Windows   std::cout << GetCurrentFolder(argv[0])  << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------------------------------------
  ` /home/richel/qtsdk-2010.04/bin/Projects/Website/CppGetCurrentFolder-build-desktop`
  --------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
