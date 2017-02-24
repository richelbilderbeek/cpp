



 

 

 

 

 

([C++](Cpp.md)) [std::greater\_equal](CppGreater_equal.md)
============================================================

 

[Predicate](CppPredicate.md) to perform
[operator&gt;=](CppOperatorGreaterEqual.md) on two values.

 

 

 

 

 

Example
-------

 

The code below shows how to replace values that are greater or equal to
one by a zero.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   void ReplaceOneOrHigherByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::greater_equal<int>(),1),0); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



