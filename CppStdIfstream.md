[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::ifstream](CppIfstream.htm)
=================================================

 

[std::ifstream](CppIfstream.htm) is an [STL](CppStl.htm) file input
[stream](CppStream.htm).

 

 

 

 

 

Example: [CopyFile](CppCopyFile.htm)
------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream>  //From http://www.richelbilderbeek.nl/CppCopyFile.htm void CopyFile(const std::string& fileNameFrom, const std::string& fileNameTo) {   assert(FileExists(fileNameFrom));   std::ifstream in (fileNameFrom.c_str());   std::ofstream out(fileNameTo.c_str());   out << in.rdbuf();    out.close();   in.close(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
