
 

 

 

 

 

([C++](Cpp.md)) [std::swap](CppStdSwap.md)
=========================================

 

[Algorithm](CppAlgorithm.md) to swap two values of the same [data
type](CppDataType.md).

 

The [definition](CppDefinition.md) of [std::swap](CppStdSwap.md) is in
[algorithm.h](CppAlgorithmH.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert>  int main() {   int a = 3;   int b = 7;   std::swap(a,b);   assert(a == 7);   assert(b == 3); }`
  --------------------------------------------------------------------------------------------------------------------------------------------

 

Consider specializing std::swap for your own [classes](CppClass.md)
when you know a more efficient way to exhange their values by calling
[operator=](CppOperatorAssign.md) three times \[1\].

 

 

 

 

Example [definition](CppDefinition.md)
---------------------------------------

 

  -----------------------------------------------------------------------------------------------
  ` template <class T> inline void swap(T& a, T& b) {   const T tmp = a;   a = b;   b = tmp; }`
  -----------------------------------------------------------------------------------------------

 

 

 

 

 

XOR swap
--------

 

The XOR swap is another way to swap two values. Prefer using
[std::swap](CppStdSwap.md) \[2\].

 

  --------------------------------------------------------------------------------------------------------
  ` void XorSwap (int *x, int *y)  {   if (x != y)    {     *x ^= *y;     *y ^= *x;     *x ^= *y;   } }`
  --------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::swap](http://www.cplusplus.com/reference/algorithm/swap)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 6 guideline: 'consider specializing
    std::swap for your own types when objects of your type have a way to
    exhange their values more efficiently than via
    brute-force assignment'.
2.  [big\_bad\_al: How to swap two integers in
    C++](http://big-bad-al.livejournal.com/98093.html): 'If you use the
    xor trick to swap integers, STOP IT!'

 

 

 

 

 

 

