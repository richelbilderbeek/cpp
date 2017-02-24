



 

 

 

 

 

([C++](Cpp.md)) [std::distance](Cppstd::distance.md)
======================================================

 

[std::distance](Cppstd::distance.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to determine the distance (in number of
elements) between two [iterators](CppIterator.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int main() {   std::vector<int> v;   assert(std::distance(v.begin(),v.end())==0);   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(3);   v.push_back(4);   assert(std::distance(v.begin(),v.end())==5); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



