
 

 

 

 

 

([C++](Cpp.md)) [ReplaceNegativeByZero](CppReplaceNegativeByZero.md)
======================================================================

 

[Code snippet](CppCodeSnippets.md) to replace negative values in a
[std::vector](CppStdVector.md) by a zero.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplaceNegativeByZero.htm void ReplaceNegativeByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::less<int>(),0),0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

