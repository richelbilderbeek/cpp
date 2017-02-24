



 

 

 

 

 

([C++](Cpp.htm)) [std::swap\_ranges](CppSwap_ranges.htm)
========================================================

 

[std::swap\_ranges](CppSwap_ranges.htm) is an
[algorithm](CppAlgorithm.htm) to swap two [container](CppContainer.htm)
ranges.

 

[std::swap\_ranges](CppSwap_ranges.htm) is [defined](CppDefinition.htm)
in the [header file](CppHeaderFile.htm)
[algorithm.h](CppAlgorithmH.htm).

 

In the example below, two ranges in one same
[container](CppContainer.htm) are swapped. The two ranges, however, may
also be of two different [containers](CppContainer.htm). It is undefined
what happens if the ranges overlap.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <string>  int main() {   std::string s = "-AA-BB-";   std::cout << s << '\n';   std::swap_ranges(s.begin()+1,s.begin()+3,s.begin()+4);   std::cout << s << '\n'; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------
  ` -AA-BB- -BB-AA-`
  --------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::swap\_ranges](http://www.cplusplus.com/reference/algorithm/swap_ranges)

 

 

 

 

 





 



