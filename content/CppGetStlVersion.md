



 

 

 

 

 

([C++](Cpp.md)) [GetStlVersion](CppGetStlVersion.md)
======================================================

 

[GetStlVersion](CppGetStlVersion.md) is a [version](CppVersion.md)
[code snippets](CppCodeSnippets.md) to obtain the
[version](CppVersion.md) of the current [STL](CppStl.md)
[library](CppLibrary.md) in use.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <boost/lexical_cast.hpp>  ///GetStlVersion returns the version number of the GCC STL currently installed. ///From http://www.richelbilderbeek.nl/CppGetStlVersion.htm const std::string GetStlVersion() {   return boost::lexical_cast<std::string>(__VERSION__); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



