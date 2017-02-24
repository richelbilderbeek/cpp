
 

 

 

 

 

([C++](Cpp.md)) [ReadDoubleFromFile](CppReadDoubleFromFile.md)
================================================================

 

[File I/O](CppFileIo.md) [code snippets](CppCodeSnippets.md) to read
the first line of a file and [convert](CppConvert.md) it to a
[double](CppDouble.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///ReadDoubleFromFile reads the first line of a file ///and converts it to a double. ///From http://www.richelbilderbeek.nl/CppReadDoubleFromFile.htm double ReadDoubleFromFile(const std::string& fileName) {   const std::vector<std::string> v = FileToVector(fileName);   assert(v.empty()==false);   const double d = std::atof(v[0].c_str());   return d; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

