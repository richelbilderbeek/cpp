

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetGccVersion](CppGetGccVersion.htm)
======================================================

 

[GetGccVersion](CppGetGccVersion.htm) is a [version](CppVersion.htm)
[code snippets](CppCodeSnippets.htm) to obtain the
[version](CppVersion.htm) of the current [GCC](CppGcc.htm) in use.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //#include <cstdlib> #include <string> #include <boost/lexical_cast.hpp>  ///GetGccVersion returns the version number of GCC currently installed. ///From http://www.richelbilderbeek.nl/CppGetGccVersion.htm const std::string GetGccVersion() {   return       boost::lexical_cast<std::string>(__GNUC__)     + std::string(".")     + boost::lexical_cast<std::string>(__GNUC_MINOR__)     + std::string(".")     + boost::lexical_cast<std::string>(__GNUC_PATCHLEVEL__); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
