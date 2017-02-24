[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::multiplies](CppMultiplies.htm)
=====================================================

 

[std::multiplies](CppMultiplies.htm) is a [functor](CppFunctor.htm) that
encapsulates **[operator\*](CppOperatorMultiply.htm)**. The
[functor](CppFunctor.htm) to perform a division on a range is
[std::divides](CppDivides.htm).

 

 

 

 

 

Example
-------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),3)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
