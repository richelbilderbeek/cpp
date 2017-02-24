



 

 

 

 

 

([C++](Cpp.md)) [GetCumulativeHistogram](CppGetCumulativeHistogram.md)
========================================================================

 

[Math](CppMath.md) and [std::vector](CppVector.md) [code
snippet](CppCodeSnippets.md) to calculate a cumulative histogram from a
histogram.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From htpp://www.richelbilderbeek.nl/CppGetCumulativeHistogram.htm template <class T> const std::vector<T> GetCumulativeHistogram(const std::vector<T>& histogram) {   std::vector<T> v(histogram.begin(),histogram.end() );   const int size = static_cast<int>(v.size());   for (int i=1; i!=size; ++i)   {     v[i] += v[i-1];   }   return v; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



