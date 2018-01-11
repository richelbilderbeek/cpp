
 

 

 

 

 

([C++](Cpp.md)) [boost::algorithm::find\_first](CppStdFind_first.md)
===================================================================

 

[boost::algorithm::find\_first](CppStdFind_first.md) is a
[Boost](CppBoost.md) [std::string](CppStdString.md)
[algorithm](CppAlgorithm.md) to find the first
[std::string](CppStdString.md) in a [std::string](CppStdString.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <boost/algorithm/string/find.hpp>  int main() {   const std::string s = "abc**def";   assert( !boost::algorithm::find_first(s,"**").empty() );   assert(  boost::algorithm::find_first(s,"xx").empty() ); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

