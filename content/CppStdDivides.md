



 

 

 

 

 

([C++](Cpp.htm)) [std::divides](CppDivides.htm)
===============================================

 

[std::divides](CppDivides.htm) is a [functor](CppFunctor.htm) that
encapsulates **[operator/](CppOperatorDivide.htm)**. The
[functor](CppFunctor.htm) to perform a multiplication on a range is
[std::multiplies](CppMultiplies.htm).

 

 

 

 

 

Example
-------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppHalve.htm void Halve(std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::divides<double>(),2.0));     }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



