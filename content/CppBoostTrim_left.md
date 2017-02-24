



 

 

 

 

 

([C++](Cpp.htm)) [boost::algorithm::trim\_left](CppTrim_left.htm)
=================================================================

 

[boost::algorithm::trim\_left](CppTrim_left.htm) is a
[Boost](CppBoost.htm) [std::string](CppString.htm)
[algorithm](CppAlgorithm.htm) to trim whitespace away from the left side
of a [std::string](CppString.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/algorithm/string/trim.hpp>  int main() {   std::string s = " \t \n x";   boost::algorithm::trim_left(s);   assert(s=="x"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



