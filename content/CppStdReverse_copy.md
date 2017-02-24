

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::reverse\_copy](CppReverse_copy.htm)
==========================================================

 

[std::reverse\_copy](CppReverse_copy.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to copy a [container](CppContainer.htm) in
the reverse order.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);    //Reverse-copy v in w   std::vector<int> w;   std::reverse_copy(v.begin(),v.end(),std::back_inserter(w));    //Assume the algorithm works as expected   assert(w.size() == 3);   assert(w[0] == 2);   assert(w[1] == 1);   assert(w[2] == 0); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
