[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::rotate\_copy](CppRotate_copy.htm)
========================================================

 

[std::rotate\_copy](CppRotate_copy.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to rotate-copy a
[container](CppContainer.htm) to another [container](CppContainer.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   std::vector<int> w;   //Rotate-copy and let v[1] be the new w[0]   //(and v[2] be w[1])   //(and v[0] be w[2])   std::rotate_copy(v.begin(),v.begin()+1,v.end(),std::back_inserter(w));   assert(w[0]==1);   assert(w[1]==2);   assert(w[2]==0); } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
