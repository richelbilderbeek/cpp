[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetSum of a matrix](CppGetSumMatrix.htm)
==========================================================

 

[Matrix](CppMatrix.htm) [code snippet](CppCodeSnippets.htm) to sum all
values in a two-dimensional [matrix](CppMatrix.htm). To sum all values
in a one-dimensional [container](CppContainer.htm), [go to the GetSum
(on container) page](CppGetSum.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSum.htm template <class T> const T::value_type GetSum(const T& v) {   return std::accumulate(v.begin(), v.end(), static_cast<T::value_type>(0.0)); }  //From http://www.richelbilderbeek.nl/CppGetSumMatrix.htm template <class T> const T GetSum(const std::vector<std::vector<T> >& v) {   T sum = static_cast<T>(0.0);   typedef std::vector<std::vector<T> >::const_iterator Iterator;   const Iterator j = v.end();   for (Iterator i = v.begin(); i!=j; ++i)   {     sum+=GetSum(*i);   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
