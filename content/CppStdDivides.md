
 

 

 

 

 

([C++](Cpp.md)) [std::divides](CppStdDivides.md)
===============================================

 

[std::divides](CppStdDivides.md) is a [functor](CppFunctor.md) that
encapsulates **[operator/](CppOperatorDivide.md)**. The
[functor](CppFunctor.md) to perform a multiplication on a range is
[std::multiplies](CppStdMultiplies.md).

 

 

 

 

 

Example
-------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppHalve.htm void Halve(std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::divides<double>(),2.0));     }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

