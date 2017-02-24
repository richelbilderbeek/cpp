[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetMaxLong](CppGetMaxLong.htm)
================================================

 

[GetMaxLong](CppGetMaxLong.htm) is a [checking](CppCheck.htm) [code
snippet](CppCodeSnippets.htm) to get the maximal value of a
[long](CppLong.htm).

 

[GetMaxLong](CppGetMaxLong.htm) has two flavors:

1.  [STL](CppStl.htm) [GetMaxLong](CppGetMaxLong.htm)
2.  [Boost](CppBoost.htm) [GetMaxLong](CppGetMaxLong.htm)

 

 

 

 

 

[STL](CppStl.htm) [GetMaxLong](CppGetMaxLong.htm)
-------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <limits>  ///GetMaxLong returns the highest possible value of a long. ///From http://www.richelbilderbeek.nl/CppGetMaxLong.htm long GetMaxLong() {   return std::numeric_limits<long>::max(); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Boost](CppBoost.htm) [GetMaxLong](CppGetMaxLong.htm)
-----------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <boost/numeric/conversion/bounds.hpp>  ///GetMaxLong returns the highest possible value of a long. ///From http://www.richelbilderbeek.nl/CppGetMaxLong.htm long GetMaxLong() {   return boost::numeric::bounds<long>::highest(); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
