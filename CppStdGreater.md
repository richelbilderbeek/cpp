[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::greater](CppGreater.htm)
===============================================

 

[Predicate](CppPredicate.htm) to perform
[operator&gt;](CppOperatorGreater.htm) on two values.

 

 

 

 

 

Example
-------

 

The code below shows how to replace values that are greater than zero by
a zero.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplacePositiveByZero.htm void ReplacePositiveByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::greater<int>(),0),0); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
