[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetDifference](CppGetDifference.htm)
======================================================

 

[GetDifference](CppGetDifference.htm) is a [math](CppMath.htm) [code
snippet](CppCodeSnippets.htm) to get get a difference
[std::vector](CppVector.htm) from [std::vectors](CppVector.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetDifference.htm template <typename T> const std::vector<T> GetDifference(   const std::vector<T>& a,   const std::vector<T>& b) {   assert(a.size()==b.size());   std::vector<T> v(a);   const std::size_t sz = v.size();   for (std::size_t i = 0; i!=sz; ++i)   {     v[i]-=b[i];   }   return v; }  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
