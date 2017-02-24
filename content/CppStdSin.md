



 

 

 

 

 

([C++](Cpp.md)) [std::sin](CppSin.md)
=======================================

 

Standard [function](CppFunction.md) for calculating the sine of an
angle, where the angle is in radians.

 

To use [std::sin](CppSin.md), the [STL](CppStl.md) [header
file](CppHeaderFile.md) [cmath.h](CppCmathH.md) must be
[\#include](CppInclude.md)d.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath>   int main () {   const double x = 0.5 * M_PI;   const double y = std::sin(x);   assert(y == 1.0); }   `
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



