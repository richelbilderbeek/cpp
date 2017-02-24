[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::any\_of](CppAny_of.htm)
==============================================

 

[std::any\_of](CppAny_of.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) since the [C++11](Cpp11.htm)
[standard](CppStandard.htm) to [check](CppCheck.htm) if there is an
element in a [container](CppContainer.htm) that satisfies a certain
[predicate](CppPredicate.htm).

 

-   [Download the Qt Creator project 'CppAny\_of' (zip)](CppAny_of.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   //Create a std::vector with only positive values   const std::vector<int> v = { 0,1,2,3,4,5 };   //Assume any of these has the value of three   assert(std::any_of(v.begin(),v.end(),[](const int i){ return i == 3; } )); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
