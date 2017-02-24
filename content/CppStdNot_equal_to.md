



 

 

 

 

 

([C++](Cpp.md)) [std::not\_equal\_to](CppNot_equal_to.md)
===========================================================

 

[Predicate](CppPredicate.md) to perform
[operator!=](CppOperatorNotEqual.md) on two values.

 

 

 

 

 

Example
-------

 

The code below shows how to count the number of non-zero values.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroes.htm int CountNonZeroes(const std::vector<double>& v) {  return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::not_equal_to<double>(),0.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



