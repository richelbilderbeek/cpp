[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [DeleteFile](CppDeleteFile.htm)
================================================

 

[DeleteFile](CppDeleteFile.htm) is a [file I/O](CppFileIo.htm) [code
snippet](CppCodeSnippets.htm) to delete a file.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdio> #include <fstream>  int main() {   const std::string filename = "tmp.txt";   {     //Check that file is not present     std::ifstream file(filename.c_str());     assert(!file.is_open());   }   {     //Create file     std::ofstream file(filename.c_str());   }   {     //Check that file is present     std::ifstream file(filename.c_str());     assert(file.is_open());   }   {     //Delete file     std::remove(filename.c_str());   }   {     //Check that file is not present     std::ifstream file(filename.c_str());     assert(!file.is_open());   } } `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
