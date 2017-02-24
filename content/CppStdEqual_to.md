



 

 

 

 

 

([C++](Cpp.md)) [std::equal\_to](CppEqual_to.md)
==================================================

 

[Predicate](CppPredicate.md) to perform
[operator==](CppOperatorEqual.md) on two values.

 

[std::equal\_to](CppEqual_to.md) works better on [int](CppInt.md) than
on [double](CppDouble.md), because of rounding errors.
[fuzzy\_equal\_to](CppFuzzy_equal_to.md) can be used for testing two
[double](CppDouble.md) for equality with some tolerance.

 

 

 

 

 

Example
-------

 

The code below shows how to replace values that are equal to a zero by a
one. Note: this is not a preferred version of
[ReplaceZeroByOne](CppReplaceZeroByOne.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  void ReplaceZeroByOne(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::equal_to<int>(),0),1); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Another exaple
--------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   //Create a std::vector of 99 zeros and a single 42   std::vector<int> v(99,0);   v.push_back(42);    //Shuffle the std::vector   std::random_shuffle(v.begin(),v.end());    //Count the zeros and 42 using std::find_if and std::bind_2nd   // (though using std::count would be easier)   assert(std::count_if(v.begin(),v.end(),     std::bind2nd(std::equal_to<int>(),0)) == 99);   assert(std::count_if(v.begin(),v.end(),     std::bind2nd(std::equal_to<int>(),42)) == 1); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



