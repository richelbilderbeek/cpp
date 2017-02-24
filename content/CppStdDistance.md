



 

 

 

 

 

([C++](Cpp.htm)) [std::distance](Cppstd::distance.htm)
======================================================

 

[std::distance](Cppstd::distance.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to determine the distance (in number of
elements) between two [iterators](CppIterator.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int main() {   std::vector<int> v;   assert(std::distance(v.begin(),v.end())==0);   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(3);   v.push_back(4);   assert(std::distance(v.begin(),v.end())==5); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



