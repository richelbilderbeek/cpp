

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::fill](CppFill.htm)
=========================================

 

[std::fill](CppFill.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to assign values to a
[container](CppContainer.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <numeric> #include <vector>  int main() {   //Create a std::vector storing '1' 10x   std::vector<int> v(10,1);   //10 x 1 = 10   assert(std::accumulate(v.begin(),v.end(),0)==10);   //Fill the std::vector with '2'   std::fill(v.begin(),v.end(),2);   //10 x 2 = 20   assert(std::accumulate(v.begin(),v.end(),0)==20); }  `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
