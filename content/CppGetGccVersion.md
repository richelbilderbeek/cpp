
 

 

 

 

 

([C++](Cpp.md)) [GetGccVersion](CppGetGccVersion.md)
======================================================

 

[GetGccVersion](CppGetGccVersion.md) is a [version](CppVersion.md)
[code snippets](CppCodeSnippets.md) to obtain the
[version](CppVersion.md) of the current [GCC](CppGcc.md) in use.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //#include <cstdlib> #include <string> #include <boost/lexical_cast.hpp>  ///GetGccVersion returns the version number of GCC currently installed. ///From http://www.richelbilderbeek.nl/CppGetGccVersion.htm const std::string GetGccVersion() {   return       boost::lexical_cast<std::string>(__GNUC__)     + std::string(".")     + boost::lexical_cast<std::string>(__GNUC_MINOR__)     + std::string(".")     + boost::lexical_cast<std::string>(__GNUC_PATCHLEVEL__); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

