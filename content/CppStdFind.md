



 

 

 

 

 

([C++](Cpp.md)) [std::find](CppFind.md)
=========================================

 

[STL](CppStl.md) [algorithm](CppAlgorithm.md) for searching a single
element in a [container](CppContainer.md). It is similar to
[std::search](CppSearch.md), except that [std::search](CppSearch.md)
searches for a sequence of elements.

 

The use of a [functor](CppFunctor.md) extends the functionality of
[std::find](CppFind.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <cassert> #include <algorithm>  int main() {   //Create a std::vector of the six first primes   std::vector<int> v;   v.push_back(1);   v.push_back(2);   v.push_back(3);   v.push_back(5);   v.push_back(7);   v.push_back(11);   assert(std::find(v.begin(), v.end(), 7) != v.end()); //Found   assert(std::find(v.begin(), v.end(), 4) == v.end()); //Not found }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::find](http://www.cplusplus.com/reference/string/string/find)
-   [CppReference.com page about
    std::find](http://www.cppreference.com/wiki/stl/algorithm/find)

 

 

 

 

 





 



