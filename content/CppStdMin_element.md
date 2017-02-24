

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::min\_element](CppMin_element.htm)
========================================================

 

[std::min\_element](CppMin_element.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to find the lowest value in a
[container](CppContainer.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   //Create a std::vector with values   std::vector<int> v;   v.push_back( 1);   v.push_back( 4);   v.push_back( 9);   v.push_back(16);   v.push_back(25);    //Just shuffle for fun   std::random_shuffle(v.begin(),v.end());    //Assume the lowest and heighest values are found   assert( *std::min_element(v.begin(),v.end()) ==  1);   assert( *std::max_element(v.begin(),v.end()) == 25); }  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
