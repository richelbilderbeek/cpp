# ([C++](Cpp.md)) [std::swap\_ranges](CppSwap_ranges.md)

[std::swap\_ranges](CppSwap_ranges.md) is an
[algorithm](CppAlgorithm.md) to swap two [container](CppContainer.md)
ranges.

 

[std::swap\_ranges](CppSwap_ranges.md) is [defined](CppDefinition.md)
in the [header file](CppHeaderFile.md)
[algorithm.h](CppAlgorithmH.md).

 

In the example below, two ranges in one same
[container](CppContainer.md) are swapped. The two ranges, however, may
also be of two different [containers](CppContainer.md). It is undefined
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

 

 

 

 

 

 

