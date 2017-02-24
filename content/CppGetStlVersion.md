

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetStlVersion](CppGetStlVersion.htm)
======================================================

 

[GetStlVersion](CppGetStlVersion.htm) is a [version](CppVersion.htm)
[code snippets](CppCodeSnippets.htm) to obtain the
[version](CppVersion.htm) of the current [STL](CppStl.htm)
[library](CppLibrary.htm) in use.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  ///GetStlVersion returns the version number of the GCC STL currently installed. ///From http://www.richelbilderbeek.nl/CppGetStlVersion.htm const std::string GetStlVersion() {   return boost::lexical_cast<std::string>(__VERSION__); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
