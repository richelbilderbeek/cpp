

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::algorithm::find\_first](CppFind_first.htm)
===================================================================

 

[boost::algorithm::find\_first](CppFind_first.htm) is a
[Boost](CppBoost.htm) [std::string](CppString.htm)
[algorithm](CppAlgorithm.htm) to find the first
[std::string](CppString.htm) in a [std::string](CppString.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/algorithm/string/find.hpp>  int main() {   const std::string s = "abc**def";   assert( !boost::algorithm::find_first(s,"**").empty() );   assert(  boost::algorithm::find_first(s,"xx").empty() ); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
