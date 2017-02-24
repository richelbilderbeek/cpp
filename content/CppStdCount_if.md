



 

 

 

 

 

([C++](Cpp.htm)) [std::count\_if](CppCount_if.htm)
==================================================

 

[std::count\_if](CppCount_if.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) for counting elements in a
[container](CppContainer.htm) matching a certain
[predicate](CppPredicate.htm). For counting without a
[predicate](CppPredicate.htm) use [std::count](CppCount.htm).

 

 

 

 

 

Example: [CountNonZeroes](CppCountNonZeroes.htm)
------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroes.htm int CountNonZeroes(const std::vector<double>& v) {  return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::not_equal_to<double>(),0.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
