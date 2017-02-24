



 

 

 

 

 

([C++](Cpp.md)) [SaveContainer](CppSaveContainer.md)
======================================================

 

[SaveContainer](CppSaveContainer.md) is a [container](CppContainer.md)
and [file I/O](CppFileIo.md) [code snippet](CppCodeSnippets.md) to
save a [container](CppContainer.md) to file, one element per line.

 

 

 

 

 

[SaveContainer](CppSaveContainer.md) using the [G++](CppGpp.md) (version 4.4.1) [compiler](CppCompiler.md)
-------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppSaveContainer.htm template <class Container> void SaveContainer(const Container& c, const std::string& filename) {   std::ofstream f(filename.c_str());   std::copy(c.begin(),c.end(),std::ostream_iterator<typename Container::value_type>(f,"\n")); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[SaveContainer](CppSaveContainer.md) using the [C++ Builder](CppBuilder.md) 6.0 [compiler](CppCompiler.md)
-------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppSaveContainer.htm template <class Container> void SaveContainer(const Container& c, const std::string& filename) {   std::ofstream f(filename.c_str());   std::copy(c.begin(),c.end(),std::ostream_iterator<Container::value_type>(f,"\n")); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



