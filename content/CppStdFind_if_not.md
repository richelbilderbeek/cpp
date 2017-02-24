
 

 

 

 

 

([C++](Cpp.md)) [std::find\_if\_not](CppFind_if_not.md)
=========================================================

 

[std::find\_if\_not](CppFind_if_not.md) is a [C++11](Cpp11.md)
[algorithm](CppAlgorithm.md) to find an element in a
[container](CppContainer.md) that does not satisfy a certain
[predicate](CppPredicate.md).

 

-   [Download the Qt Creator project
    'CppFind\_if\_not' (zip)](CppFind_if_not.zip)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   const std::vector<int> v = { 1,3,5,7,9,10,11,13,15,17,19 };    assert(     *std::find_if_not(       v.begin(),v.end(),         [v](const int i)         {           return i%2; //An even number         }       )     == 10); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
