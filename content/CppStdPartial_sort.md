[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::partial\_sort](CppPartial_sort.htm)
==========================================================

 

[std::partial\_sort](CppPartial_sort.htm) is an [STL](CppStl.htm)
[sorting](CppSort.htm) [algorithm](CppAlgorithm.htm) to partially
[sort](CppSort.htm) a [container](CppContainer.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(5);   v.push_back(4);   v.push_back(3);   v.push_back(2);   v.push_back(1);   v.push_back(0);   std::partial_sort(v.begin(),v.begin()+3,v.end());   assert(v[0] == 0);   assert(v[1] == 1);   assert(v[2] == 2);   assert(v[3] > 2);   assert(v[4] > 2);   assert(v[5] > 2); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
