



 

 

 

 

 

([C++](Cpp.md)) [boost::algorithm::find\_first](CppFind_first.md)
===================================================================

 

[boost::algorithm::find\_first](CppFind_first.md) is a
[Boost](CppBoost.md) [std::string](CppString.md)
[algorithm](CppAlgorithm.md) to find the first
[std::string](CppString.md) in a [std::string](CppString.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/algorithm/string/find.hpp>  int main() {   const std::string s = "abc**def";   assert( !boost::algorithm::find_first(s,"**").empty() );   assert(  boost::algorithm::find_first(s,"xx").empty() ); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



