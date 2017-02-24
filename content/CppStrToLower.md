[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [StrToLower](CppStrToLower.htm)
================================================

 

[std::string](CppString.htm) [convert](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) a
[std::string](CppString.htm) to lower case.

 

 

 

 

 

![Qt Creator](PicQtCreator.png)![STL](PicStl.png) [StrToLower](CppStrToLower.htm)
---------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>  ///StrToLower converts a std::string to lowercase //From http://www.richelbilderbeek.nl/CppStrToLower.htm const std::string StrToLower(std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun<int,int>(std::tolower));   return s; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Qt Creator](PicQtCreator.png)![Boost](PicBoost.png) [StrToLower](CppStrToLower.htm)
-------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/algorithm/string.hpp>  ///StrToLower converts a std::string to lowercase //From http://www.richelbilderbeek.nl/CppStrToLower.htm const std::string StrToLower(const std::string& s) {   return boost::algorithm::to_lower_copy(s); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++ Builder](PicCppBuilder.png) [StrToLower](CppStrToLower.htm)
-----------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>  ///StrToLower converts a std::string to lowercase //From http://www.richelbilderbeek.nl/CppStrToLower.htm const std::string StrToLower(std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun(std::tolower));   return s; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
