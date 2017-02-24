[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::partition](CppPartition.htm)
===================================================

 

[std::partition](CppPartition.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to partition elements in a
[container](CppContainer.htm) by a certain
[predicate](CppPredicate.htm). For example, in the code shown below, a
[std::vector](CppVector.htm) is partitioned into primes and non-primes.
Note that the order of the non-primes has changed. If the ordering must
remain, use [std::stable\_partition](CppStable_partition.htm).

 

-   [Download the Qt Creator project
    'CppPartition' (zip)](CppPartition.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <cmath> #include <iostream> #include <iterator> #include <vector>  //From http://www.richelbilderbeek.nl/CppIsPrime.htm bool IsPrime(const int x) {   const int max   = static_cast<int>(       std::sqrt(static_cast<double>(x))     ) + 1;    for (int i=2; i!=max; ++i)   {     if (x % i == 0) return false;   }    return true; }  int main() {   std::vector<int> v;   for (int i=1; i!=10; ++i) v.push_back(i);    //Partition the std::vector in primes and non-primes   typedef std::vector<int>::iterator Iterator;   const Iterator p_end = std::partition(v.begin(),v.end(),IsPrime);    std::cout << "Primes: ";   std::copy(v.begin(),p_end,std::ostream_iterator<int>(std::cout," "));   std::cout << "\nNon-primes: ";   std::copy(p_end,v.end(),std::ostream_iterator<int>(std::cout," ")); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------
  ` Primes: 1 2 3 7 5  Non-primes: 6 4 8 9`
  -------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::partition](http://www.cplusplus.com/reference/algorithm/partition)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
