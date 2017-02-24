



 

 

 

 

 

([C++](Cpp.htm)) [std::swap](CppSwap.htm)
=========================================

 

[Algorithm](CppAlgorithm.htm) to swap two values of the same [data
type](CppDataType.htm).

 

The [definition](CppDefinition.htm) of [std::swap](CppSwap.htm) is in
[algorithm.h](CppAlgorithmH.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   int a = 3;   int b = 7;   std::swap(a,b);   assert(a == 7);   assert(b == 3); }`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

Consider specializing std::swap for your own [classes](CppClass.htm)
when you know a more efficient way to exhange their values by calling
[operator=](CppOperatorAssign.htm) three times \[1\].

 

 

 

 

Example [definition](CppDefinition.htm)
---------------------------------------

 

  -----------------------------------------------------------------------------------------------
  ` template <class T> inline void swap(T& a, T& b) {   const T tmp = a;   a = b;   b = tmp; }`
  -----------------------------------------------------------------------------------------------

 

 

 

 

 

XOR swap
--------

 

The XOR swap is another way to swap two values. Prefer using
[std::swap](CppSwap.htm) \[2\].

 

  --------------------------------------------------------------------------------------------------------
  ` void XorSwap (int *x, int *y)  {   if (x != y)    {     *x ^= *y;     *y ^= *x;     *x ^= *y;   } }`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::swap](http://www.cplusplus.com/reference/algorithm/swap)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 6 guideline: 'consider specializing
    std::swap for your own types when objects of your type have a way to
    exhange their values more efficiently than via
    brute-force assignment'.
2.  [big\_bad\_al: How to swap two integers in
    C++](http://big-bad-al.livejournal.com/98093.html): 'If you use the
    xor trick to swap integers, STOP IT!'

 

 

 

 

 





 



