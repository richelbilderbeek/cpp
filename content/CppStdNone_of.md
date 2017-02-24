



 

 

 

 

 

([C++](Cpp.htm)) [std::none\_of](CppNone_of.htm)
================================================

 

[std::none\_of](CppNone_of.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) since the [C++11](Cpp11.htm)
[standard](CppStandard.htm) to [check](CppCheck.htm) if none of the
elements from a [container](CppContainer.htm) satisfy a certain
[predicate](CppPredicate.htm).

 

-   [Download the Qt Creator project
    'CppNone\_of' (zip)](CppNone_of.zip)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   //Create a std::vector with only positive values   const std::vector<int> v = { 0,1,2,3,4,5 };   //Assume none of these has a value smaller than zero   assert(std::none_of(v.begin(),v.end(),[](const int i){ return i < 0; } )); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



