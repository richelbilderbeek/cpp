



 

 

 

 

 

([C++](Cpp.md)) [std::divides](CppDivides.md)
===============================================

 

[std::divides](CppDivides.md) is a [functor](CppFunctor.md) that
encapsulates **[operator/](CppOperatorDivide.md)**. The
[functor](CppFunctor.md) to perform a multiplication on a range is
[std::multiplies](CppMultiplies.md).

 

 

 

 

 

Example
-------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppHalve.htm void Halve(std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::divides<double>(),2.0));     }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



