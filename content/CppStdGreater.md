



 

 

 

 

 

([C++](Cpp.md)) [std::greater](CppGreater.md)
===============================================

 

[Predicate](CppPredicate.md) to perform
[operator&gt;](CppOperatorGreater.md) on two values.

 

 

 

 

 

Example
-------

 

The code below shows how to replace values that are greater than zero by
a zero.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplacePositiveByZero.htm void ReplacePositiveByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::greater<int>(),0),0); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



