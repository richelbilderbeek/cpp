
 

 

 

 

 

([C++](Cpp.md)) [std::logical\_not](CppStdLogical_not.md)
========================================================

 

[std::logical\_not](CppStdLogical_not.md) is a [functor](CppFunctor.md)
that performs a [operator!](CppOperatorLogicalNot.md) on an element.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   std::vector<bool> v; //Prefer std::bitset of boost::dynamic bitset   v.push_back(true);   v.push_back(false);    assert(v.size() == 2);   assert(v[0] == true );   assert(v[1] == false);    std::vector<bool> w; //Prefer std::bitset of boost::dynamic bitset    //Use std::logical_not on the elements of v,   //append the result to w   std::transform(     v.begin(),     v.end(),     std::back_inserter(w),     std::logical_not<bool>());    //Check if std::logical_not works as expected   assert(w.size() == 2);   assert(w[0] == false);   assert(w[1] == true ); } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::logical\_not](http://www.cplusplus.com/reference/std/functional/logical_not)

 

 

 

 

 

 

