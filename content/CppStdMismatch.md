

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::mismatch](CppMismatch.htm)
=================================================

 

[std::mismatch](CppMismatch.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to find a mismatch between two
[containers](CppContainer.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(3);    std::vector<int> w(v);    assert(v==w);    assert(std::mismatch(v.begin(),v.end(),w.begin())     == std::make_pair(v.end(),w.end()));    w[1] = 42;    assert(std::mismatch(v.begin(),v.end(),w.begin())     == std::make_pair(v.begin()+1,w.begin()+1));  }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
