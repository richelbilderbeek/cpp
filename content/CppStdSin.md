



 

 

 

 

 

([C++](Cpp.htm)) [std::sin](CppSin.htm)
=======================================

 

Standard [function](CppFunction.htm) for calculating the sine of an
angle, where the angle is in radians.

 

To use [std::sin](CppSin.htm), the [STL](CppStl.htm) [header
file](CppHeaderFile.htm) [cmath.h](CppCmathH.htm) must be
[\#include](CppInclude.htm)d.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath>   int main () {   const double x = 0.5 * M_PI;   const double y = std::sin(x);   assert(y == 1.0); }   `
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



