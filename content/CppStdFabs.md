
 

 

 

 

 

([C++](Cpp.md)) [std::fabs](CppFabs.md)
=========================================

 

[std::fabs](CppFabs.md) is an [STL](CppStl.md)
[function](CppFunction.md) to take the absolute value of a
[double](CppDouble.md).

 

[std::fabs](CppFabs.md) is defined in the [header
file](CppHeaderFile.md) [cmath.h](CppCmathH.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath>  int main() {   const double x = 3.14;   const double y = -x;   assert(x == std::fabs(y)); }`
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Difference between [std::abs](CppAbs.md) and [std::fabs](CppFabs.md)
----------------------------------------------------------------------

 

[std::abs](CppAbs.md) can be used to calculate the absolute value of
both an [integer](CppInt.md) and a [double](CppDouble.md), where
[std::fabs](CppFabs.md) can only be used to obtain the absolute value
of a [double](CppDouble.md).

 

 

 

 

 

 

