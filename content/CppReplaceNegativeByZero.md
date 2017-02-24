



 

 

 

 

 

([C++](Cpp.htm)) [ReplaceNegativeByZero](CppReplaceNegativeByZero.htm)
======================================================================

 

[Code snippet](CppCodeSnippets.htm) to replace negative values in a
[std::vector](CppVector.htm) by a zero.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplaceNegativeByZero.htm void ReplaceNegativeByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::less<int>(),0),0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



