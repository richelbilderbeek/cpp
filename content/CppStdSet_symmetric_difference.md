[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::set\_symmetric\_difference](CppSet_symmetric_difference.htm)
===================================================================================

 

[std::set\_symmetric\_difference](CppSet_symmetric_difference.htm) is an
[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to obtain the elements
from two [containers](CppContainer.htm) which are in only one of these
[containers](CppContainer.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> evens;   evens.push_back(2);   evens.push_back(4);    std::vector<int> primes;   primes.push_back(2);   primes.push_back(3);    std::vector<int> result;    std::set_symmetric_difference(     evens.begin(),evens.end(),     primes.begin(), primes.end(),     std::back_inserter(result));    //Assume that the result consists of   //- a '3' (a non-even prime)    //- a '4' (a non-prime even)   assert(result.size() == 2);   assert(result[0] == 3 || result[0] == 4);   assert(result[1] == 3 || result[1] == 4);   assert(result[0] != result[1]); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
