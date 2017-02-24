
 

 

 

 

 

([C++](Cpp.md)) [CountNonZeroes](CppCountNonZeroes.md)
========================================================

 

[CountNonZeroes](CppCountNonZeroes.md) is a [math](CppMath.md) [code
snippet](CppCodeSnippets.md) to count all non-zero elements in a
[container](CppContainer.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroes.htm int CountNonZeroes(const std::vector<double>& v) {  return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::not_equal_to<double>(),0.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

