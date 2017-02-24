[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::algorithm::trim\_left](CppTrim_left.htm)
=================================================================

 

[boost::algorithm::trim\_left](CppTrim_left.htm) is a
[Boost](CppBoost.htm) [std::string](CppString.htm)
[algorithm](CppAlgorithm.htm) to trim whitespace away from the left side
of a [std::string](CppString.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/algorithm/string/trim.hpp>  int main() {   std::string s = " \t \n x";   boost::algorithm::trim_left(s);   assert(s=="x"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
