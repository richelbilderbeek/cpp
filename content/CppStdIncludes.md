[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::includes](CppIncludes.htm)
=================================================

 

[std::includes](CppIncludes.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to determine if one sorted
[container](CppContainer.htm) includes all values of another sorted
[container](CppContainer.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <set>  int main() {   //Create a std::set (which is always sorted)   std::set<int> s;   s.insert(1);   s.insert(2);   s.insert(3);   s.insert(5);   s.insert(7);    std::set<int> t(s);    //Assume t has at least all elements of s   assert(std::includes(t.begin(),t.end(),s.begin(),s.end()) == true);   //Assume s has at least all elements of t   assert(std::includes(s.begin(),s.end(),t.begin(),t.end()) == true);    t.insert(4);    //Again assume t has at least all elements of s   assert(std::includes(t.begin(),t.end(),s.begin(),s.end()) == true);   //Assume s does not have at least all elements of t anymore   assert(std::includes(s.begin(),s.end(),t.begin(),t.end()) == false); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
