[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::modulus](CppModulus.htm)
===============================================

 

[std::modulus](CppModulus.htm) is an [STL](CppStl.htm)
[functor](CppFunctor.htm) to perform [operator%](CppOperatorModulus.htm)
in [algorithms](CppAlgorithm.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <iostream> #include <iterator> #include <vector>  int main() {   //Create a std::vector with elements {0,1,2,3,4,5,6,7,8,9}   std::vector<int> v;   for (int i=0; i!=10; ++i) v.push_back(i);    //Display the std::vector   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << std::endl;    //Perform a modulus of two on every element   std::transform(v.begin(),v.end(),v.begin(),std::bind2nd(std::modulus<int>(),2));    //Display the std::vector   std::copy(v.begin(),v.end(),std::ostream_iterator<int>(std::cout," "));   std::cout << std::endl; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ----------------------------------------------
  ` 0 1 2 3 4 5 6 7 8 9  0 1 0 1 0 1 0 1 0 1 `
  ----------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
