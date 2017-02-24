
 

 

 

 

 

([C++](Cpp.md)) [std::none\_of](CppNone_of.md)
================================================

 

[std::none\_of](CppNone_of.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) since the [C++11](Cpp11.md)
[standard](CppStandard.md) to [check](CppCheck.md) if none of the
elements from a [container](CppContainer.md) satisfy a certain
[predicate](CppPredicate.md).

 

-   [Download the Qt Creator project
    'CppNone\_of' (zip)](CppNone_of.zip)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   //Create a std::vector with only positive values   const std::vector<int> v = { 0,1,2,3,4,5 };   //Assume none of these has a value smaller than zero   assert(std::none_of(v.begin(),v.end(),[](const int i){ return i < 0; } )); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

