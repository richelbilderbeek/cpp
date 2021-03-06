
 

 

 

 

 

([C++](Cpp.md)) [std::replace\_copy\_if](CppReplace_copy_if.md)
=================================================================

 

[std::replace\_copy\_if](CppReplace_copy_if.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to copy a range of elements and, while
doing so, replace elements that satisfy a certain
[predicate](CppPredicate.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   //Create a vector with negative odd numbers   std::vector<int> v;   v.push_back( 0);   v.push_back(-1);   v.push_back( 2);   v.push_back(-3);   v.push_back( 4);   v.push_back(-5);    //Replace negatives by zero, simular to ReplaceNegativeByZero   std::vector<int> w;   std::replace_copy_if(     v.begin(),                        //Check v from its first element ...     v.end(),                          // ... to its last element     std::back_inserter(w),            //Append result at w     std::bind2nd(std::less<int>(),0), //If the value is less than zero...     0);                               // ... set it to zero    //Check if std::replace_copy_if works as expected   assert(v.size() == 6);   assert(w.size() == 6);   assert(w[0] == 0);   assert(w[1] == 0); //Replaced   assert(w[2] == 2);   assert(w[3] == 0); //Replaced   assert(w[4] == 4);   assert(w[5] == 0); //Replaced }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::replace\_copy\_if](http://www.cplusplus.com/reference/algorithm/replace_copy_if)

 

 

 

 

 

 

