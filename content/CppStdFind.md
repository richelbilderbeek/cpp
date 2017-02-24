[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::find](CppFind.htm)
=========================================

 

[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) for searching a single
element in a [container](CppContainer.htm). It is similar to
[std::search](CppSearch.htm), except that [std::search](CppSearch.htm)
searches for a sequence of elements.

 

The use of a [functor](CppFunctor.htm) extends the functionality of
[std::find](CppFind.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <cassert> #include <algorithm>  int main() {   //Create a std::vector of the six first primes   std::vector<int> v;   v.push_back(1);   v.push_back(2);   v.push_back(3);   v.push_back(5);   v.push_back(7);   v.push_back(11);   assert(std::find(v.begin(), v.end(), 7) != v.end()); //Found   assert(std::find(v.begin(), v.end(), 4) == v.end()); //Not found }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::find](http://www.cplusplus.com/reference/string/string/find)
-   [CppReference.com page about
    std::find](http://www.cppreference.com/wiki/stl/algorithm/find)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
