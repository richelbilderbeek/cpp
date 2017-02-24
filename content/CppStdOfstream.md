
 

 

 

 

 

([C++](Cpp.md)) [std::ofstream](CppOfstream.md)
=================================================

 

[std::ofstream](CppOfstream.md) (abbreviation of 'output file
[stream](CppStream.md)') is an [STL](CppStl.md) [file
I/O](CppFileIo.md) output [stream](CppStream.md).

 

[std::ofstream](CppOfstream.md) is used to write to a file. To read
from a file, use [std::ifstream](CppIfstream.md). Both are [derived
classes](CppDerivedClass.md) from [std::fstream](CppFstream.md).

 

 

 

 

 

Example: [CopyFile](CppCopyFile.md)
------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <fstream>  //From http://www.richelbilderbeek.nl/CppCopyFile.htm void CopyFile(const std::string& fileNameFrom, const std::string& fileNameTo) {   assert(FileExists(fileNameFrom));   std::ifstream in (fileNameFrom.c_str());   std::ofstream out(fileNameTo.c_str());   out << in.rdbuf();    out.close();   in.close(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

