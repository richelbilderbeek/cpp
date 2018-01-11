
 

 

 

 

 

([C++](Cpp.md)) [std::multiplies](CppStdMultiplies.md)
=====================================================

 

[std::multiplies](CppStdMultiplies.md) is a [functor](CppFunctor.md) that
encapsulates **[operator\*](CppOperatorMultiply.md)**. The
[functor](CppFunctor.md) to perform a division on a range is
[std::divides](CppStdDivides.md).

 

 

 

 

 

Example
-------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),3)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

