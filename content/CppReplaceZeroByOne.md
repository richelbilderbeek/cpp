

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ReplaceZeroByOne](CppReplaceZeroByOne.htm)
============================================================

 

[Code snippet](CppCodeSnippets.htm) to replace all zeroes in a
[std::vector](CppVector.htm) by a one.

 

  ----------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm  void ReplaceZeroByOne(std::vector<int>& v) {   std::replace(v.begin(),v.end(),0,1);  }`
  ----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
