[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::stable\_partition](CppStable_partition.htm)
==================================================================

 

[std::stable\_partition](CppStable_partition.htm) is an
[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to partition elements in
a [container](CppContainer.htm) by a certain
[predicate](CppPredicate.htm), preserving the order of the elements. For
example, in the code shown below, a [std::vector](CppVector.htm) is
partitioned into primes and non-primes.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <cmath> #include <iostream> #include <iterator> #include <vector>  //From http://www.richelbilderbeek.nl/CppIsPrime.htm bool IsPrime(const int x) {   const int max   = static_cast<int>(       std::sqrt(static_cast<double>(x))     ) + 1;    for (int i=2; i!=max; ++i)   {     if (x % i == 0) return false;   }    return true; }  int main() {   std::vector<int> v;   for (int i=1; i!=10; ++i) v.push_back(i);    //Partition the std::vector in primes and non-primes   typedef std::vector<int>::iterator Iterator;   const Iterator p_end = std::stable_partition(v.begin(),v.end(),IsPrime);    std::cout << "Primes: ";   std::copy(v.begin(),p_end,std::ostream_iterator<int>(std::cout," "));   std::cout << "\nNon-primes: ";   std::copy(p_end,v.end(),std::ostream_iterator<int>(std::cout," ")); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------------
  ` Primes: 1 2 3 5 7 Non-primes: 4 6 8 9`
  ------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
