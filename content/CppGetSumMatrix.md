



 

 

 

 

 

([C++](Cpp.md)) [GetSum of a matrix](CppGetSumMatrix.md)
==========================================================

 

[Matrix](CppMatrix.md) [code snippet](CppCodeSnippets.md) to sum all
values in a two-dimensional [matrix](CppMatrix.md). To sum all values
in a one-dimensional [container](CppContainer.md), [go to the GetSum
(on container) page](CppGetSum.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm template <class T> const T::value_type GetSum(const T& v) {   return std::accumulate(v.begin(), v.end(), static_cast<T::value_type>(0.0)); }  //From http://www.richelbilderbeek.nl/CppGetSumMatrix.htm template <class T> const T GetSum(const std::vector<std::vector<T> >& v) {   T sum = static_cast<T>(0.0);   typedef std::vector<std::vector<T> >::const_iterator Iterator;   const Iterator j = v.end();   for (Iterator i = v.begin(); i!=j; ++i)   {     sum+=GetSum(*i);   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



