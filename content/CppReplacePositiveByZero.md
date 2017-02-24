



 

 

 

 

 

([C++](Cpp.md)) [ReplacePositiveByZero](CppReplacePositiveByZero.md)
======================================================================

 

[Code snippet](CppCodeSnippets.md) to replace positive values in a
[std::vector](CppVector.md) by a zero.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplacePositiveByZero.htm void ReplacePositiveByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::greater<int>(),0),0); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



