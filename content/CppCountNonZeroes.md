[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CountNonZeroes](CppCountNonZeroes.htm)
========================================================

 

[CountNonZeroes](CppCountNonZeroes.htm) is a [math](CppMath.htm) [code
snippet](CppCodeSnippets.htm) to count all non-zero elements in a
[container](CppContainer.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroes.htm int CountNonZeroes(const std::vector<double>& v) {  return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::not_equal_to<double>(),0.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
