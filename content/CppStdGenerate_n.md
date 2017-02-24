



 

 

 

 

 

([C++](Cpp.htm)) [std::generate\_n](CppGenerate_n.htm)
======================================================

 

[std::generate\_n](CppGenerate_n.htm) is an
[algorithm](CppAlgorithm.htm) to generate a sequence of different
elements.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <iterator> #include <vector>  int main() {   //Create std::vector<int> v of size 10 filled with zeroes   const std::size_t sz = 10;   std::vector<int> v(sz,0);   //Fill v with random numbers   std::generate_n(v.begin(),sz,std::rand);   //Display v (using CoutContainer code snippet)   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout,"\n")); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
