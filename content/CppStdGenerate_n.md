
 

 

 

 

 

([C++](Cpp.md)) [std::generate\_n](CppStdGenerate_n.md)
======================================================

 

[std::generate\_n](CppStdGenerate_n.md) is an
[algorithm](CppAlgorithm.md) to generate a sequence of different
elements.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <iterator> #include <vector>  int main() {   //Create std::vector<int> v of size 10 filled with zeroes   const std::size_t sz = 10;   std::vector<int> v(sz,0);   //Fill v with random numbers   std::generate_n(v.begin(),sz,std::rand);   //Display v (using CoutContainer code snippet)   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

