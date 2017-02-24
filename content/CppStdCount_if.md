



 

 

 

 

 

([C++](Cpp.md)) [std::count\_if](CppCount_if.md)
==================================================

 

[std::count\_if](CppCount_if.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) for counting elements in a
[container](CppContainer.md) matching a certain
[predicate](CppPredicate.md). For counting without a
[predicate](CppPredicate.md) use [std::count](CppCount.md).

 

 

 

 

 

Example: [CountNonZeroes](CppCountNonZeroes.md)
------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroes.htm int CountNonZeroes(const std::vector<double>& v) {  return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::not_equal_to<double>(),0.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



