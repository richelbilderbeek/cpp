
 

 

 

 

 

([C++](Cpp.md)) [std::min\_element](CppStdMin_element.md)
========================================================

 

[std::min\_element](CppStdMin_element.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to find the lowest value in a
[container](CppContainer.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   //Create a std::vector with values   std::vector<int> v;   v.push_back( 1);   v.push_back( 4);   v.push_back( 9);   v.push_back(16);   v.push_back(25);    //Just shuffle for fun   std::random_shuffle(v.begin(),v.end());    //Assume the lowest and heighest values are found   assert( *std::min_element(v.begin(),v.end()) ==  1);   assert( *std::max_element(v.begin(),v.end()) == 25); }  `
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

