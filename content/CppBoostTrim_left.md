



 

 

 

 

 

([C++](Cpp.md)) [boost::algorithm::trim\_left](CppTrim_left.md)
=================================================================

 

[boost::algorithm::trim\_left](CppTrim_left.md) is a
[Boost](CppBoost.md) [std::string](CppString.md)
[algorithm](CppAlgorithm.md) to trim whitespace away from the left side
of a [std::string](CppString.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/algorithm/string/trim.hpp>  int main() {   std::string s = " \t \n x";   boost::algorithm::trim_left(s);   assert(s=="x"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



