
 

 

 

 

 

([C++](Cpp.md)) [GetBoostVersion](CppGetBoostVersion.md)
==========================================================

 

[GetBoostVersion](CppGetBoostVersion.md) is a [version](CppVersion.md)
[code snippets](CppCodeSnippets.md) to obtain the
[version](CppVersion.md) of the current [Boost](CppBoost.md)
[library](CppLibrary.md) in use.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <string> #include <boost/version.hpp>  ///GetBoostVersion returns the version of the current Boost library. ///From http://www.richelbilderbeek.nl/CppGetBoostVersion.htm const std::string GetBoostVersion() {   std::string s = BOOST_LIB_VERSION;   std::replace(s.begin(),s.end(),'_','.');   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

