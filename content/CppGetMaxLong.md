
 

 

 

 

 

([C++](Cpp.md)) [GetMaxLong](CppGetMaxLong.md)
================================================

 

[GetMaxLong](CppGetMaxLong.md) is a [checking](CppCheck.md) [code
snippet](CppCodeSnippets.md) to get the maximal value of a
[long](CppLong.md).

 

[GetMaxLong](CppGetMaxLong.md) has two flavors:

1.  [STL](CppStl.md) [GetMaxLong](CppGetMaxLong.md)
2.  [Boost](CppBoost.md) [GetMaxLong](CppGetMaxLong.md)

 

 

 

 

 

[STL](CppStl.md) [GetMaxLong](CppGetMaxLong.md)
-------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <limits>  ///GetMaxLong returns the highest possible value of a long. ///From http://www.richelbilderbeek.nl/CppGetMaxLong.htm long GetMaxLong() {   return std::numeric_limits<long>::max(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Boost](CppBoost.md) [GetMaxLong](CppGetMaxLong.md)
-----------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <boost/numeric/conversion/bounds.hpp>  ///GetMaxLong returns the highest possible value of a long. ///From http://www.richelbilderbeek.nl/CppGetMaxLong.htm long GetMaxLong() {   return boost::numeric::bounds<long>::highest(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

