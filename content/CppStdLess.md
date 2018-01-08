
 

 

 

 

 

([C++](Cpp.md)) [std::less](CppStdLess.md)
=========================================

 

[std::less](CppStdLess.md) is an [STL](CppStl.md)
[predicate](CppPredicate.md) to perform
[operator&lt;](CppOperatorLess.md) on two values.

 

 

 

 

 

Example
-------

 

The code below shows how to replace values that are less than zero by a
zero.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplaceNegativeByZero.htm void ReplaceNegativeByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::less<int>(),0),0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

