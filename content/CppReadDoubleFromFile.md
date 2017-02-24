

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ReadDoubleFromFile](CppReadDoubleFromFile.htm)
================================================================

 

[File I/O](CppFileIo.htm) [code snippets](CppCodeSnippets.htm) to read
the first line of a file and [convert](CppConvert.htm) it to a
[double](CppDouble.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///ReadDoubleFromFile reads the first line of a file ///and converts it to a double. ///From http://www.richelbilderbeek.nl/CppReadDoubleFromFile.htm double ReadDoubleFromFile(const std::string& fileName) {   const std::vector<std::string> v = FileToVector(fileName);   assert(v.empty()==false);   const double d = std::atof(v[0].c_str());   return d; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
