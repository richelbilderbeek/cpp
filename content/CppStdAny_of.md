



 

 

 

 

 

([C++](Cpp.md)) [std::any\_of](CppAny_of.md)
==============================================

 

[std::any\_of](CppAny_of.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) since the [C++11](Cpp11.md)
[standard](CppStandard.md) to [check](CppCheck.md) if there is an
element in a [container](CppContainer.md) that satisfies a certain
[predicate](CppPredicate.md).

 

-   [Download the Qt Creator project 'CppAny\_of' (zip)](CppAny_of.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   //Create a std::vector with only positive values   const std::vector<int> v = { 0,1,2,3,4,5 };   //Assume any of these has the value of three   assert(std::any_of(v.begin(),v.end(),[](const int i){ return i == 3; } )); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



