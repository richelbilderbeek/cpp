



 

 

 

 

 

([C++](Cpp.htm)) [std::multiset](CppMultiset.htm)
=================================================

 

[std::multiset](CppMultiset.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) similar to [std::set](CppSet.htm), except
it can contain multiple identical elements.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <set>  int main() {   std::multiset<int> s;   s.insert(1);   s.insert(2);   s.insert(2);   s.insert(3);   s.insert(3);   s.insert(3);   assert(s.count(1)==1);   assert(s.count(2)==2);   assert(s.count(3)==3); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



