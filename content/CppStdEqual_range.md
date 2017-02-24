

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::equal\_range](CppEqual_range.htm)
========================================================

 

[std::equal\_range](CppEqual_range.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to obtain the range equal to a certain
value in a [container](CppContainer.htm).

 

In the example below, the range is obtained for the values matching '1':

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(1);   v.push_back(2);    typedef std::vector<int>::const_iterator Iterator;   typedef std::pair<Iterator,Iterator> Pair;   const Pair p = std::equal_range(v.begin(),v.end(),1);    //std::equal_range returns iterators pointing to the following positions:   //0 - 1 - 1 - 2   //    ^       ^    assert(*(p.first -1)  == 0);   assert(*(p.first   )  == 1);   assert(*(p.second-1)  == 1);   assert(*(p.second  )  == 2); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
