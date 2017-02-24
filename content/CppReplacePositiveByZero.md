



 

 

 

 

 

([C++](Cpp.htm)) [ReplacePositiveByZero](CppReplacePositiveByZero.htm)
======================================================================

 

[Code snippet](CppCodeSnippets.htm) to replace positive values in a
[std::vector](CppVector.htm) by a zero.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplacePositiveByZero.htm void ReplacePositiveByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::greater<int>(),0),0); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



