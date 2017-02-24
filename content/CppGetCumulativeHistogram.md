



 

 

 

 

 

([C++](Cpp.htm)) [GetCumulativeHistogram](CppGetCumulativeHistogram.htm)
========================================================================

 

[Math](CppMath.htm) and [std::vector](CppVector.htm) [code
snippet](CppCodeSnippets.htm) to calculate a cumulative histogram from a
histogram.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From htpp://www.richelbilderbeek.nl/CppGetCumulativeHistogram.htm template <class T> const std::vector<T> GetCumulativeHistogram(const std::vector<T>& histogram) {   std::vector<T> v(histogram.begin(),histogram.end() );   const int size = static_cast<int>(v.size());   for (int i=1; i!=size; ++i)   {     v[i] += v[i-1];   }   return v; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



