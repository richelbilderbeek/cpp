[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::ofstream](CppOfstream.htm)
=================================================

 

[std::ofstream](CppOfstream.htm) (abbreviation of 'output file
[stream](CppStream.htm)') is an [STL](CppStl.htm) [file
I/O](CppFileIo.htm) output [stream](CppStream.htm).

 

[std::ofstream](CppOfstream.htm) is used to write to a file. To read
from a file, use [std::ifstream](CppIfstream.htm). Both are [derived
classes](CppDerivedClass.htm) from [std::fstream](CppFstream.htm).

 

 

 

 

 

Example: [CopyFile](CppCopyFile.htm)
------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream>  //From http://www.richelbilderbeek.nl/CppCopyFile.htm void CopyFile(const std::string& fileNameFrom, const std::string& fileNameTo) {   assert(FileExists(fileNameFrom));   std::ifstream in (fileNameFrom.c_str());   std::ofstream out(fileNameTo.c_str());   out << in.rdbuf();    out.close();   in.close(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
