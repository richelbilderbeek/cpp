



 

 

 

 

 

([C++](Cpp.htm)) [GetBoostVersion](CppGetBoostVersion.htm)
==========================================================

 

[GetBoostVersion](CppGetBoostVersion.htm) is a [version](CppVersion.htm)
[code snippets](CppCodeSnippets.htm) to obtain the
[version](CppVersion.htm) of the current [Boost](CppBoost.htm)
[library](CppLibrary.htm) in use.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <string> #include <boost/version.hpp>  ///GetBoostVersion returns the version of the current Boost library. ///From http://www.richelbilderbeek.nl/CppGetBoostVersion.htm const std::string GetBoostVersion() {   std::string s = BOOST_LIB_VERSION;   std::replace(s.begin(),s.end(),'_','.');   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



