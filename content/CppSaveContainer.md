

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SaveContainer](CppSaveContainer.htm)
======================================================

 

[SaveContainer](CppSaveContainer.htm) is a [container](CppContainer.htm)
and [file I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm) to
save a [container](CppContainer.htm) to file, one element per line.

 

 

 

 

 

[SaveContainer](CppSaveContainer.htm) using the [G++](CppGpp.htm) (version 4.4.1) [compiler](CppCompiler.htm)
-------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppSaveContainer.htm template <class Container> void SaveContainer(const Container& c, const std::string& filename) {   std::ofstream f(filename.c_str());   std::copy(c.begin(),c.end(),std::ostream_iterator<typename Container::value_type>(f,"\n")); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[SaveContainer](CppSaveContainer.htm) using the [C++ Builder](CppBuilder.htm) 6.0 [compiler](CppCompiler.htm)
-------------------------------------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppSaveContainer.htm template <class Container> void SaveContainer(const Container& c, const std::string& filename) {   std::ofstream f(filename.c_str());   std::copy(c.begin(),c.end(),std::ostream_iterator<Container::value_type>(f,"\n")); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
