

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::fabs](CppFabs.htm)
=========================================

 

[std::fabs](CppFabs.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to take the absolute value of a
[double](CppDouble.htm).

 

[std::fabs](CppFabs.htm) is defined in the [header
file](CppHeaderFile.htm) [cmath.h](CppCmathH.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath>  int main() {   const double x = 3.14;   const double y = -x;   assert(x == std::fabs(y)); }`
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Difference between [std::abs](CppAbs.htm) and [std::fabs](CppFabs.htm)
----------------------------------------------------------------------

 

[std::abs](CppAbs.htm) can be used to calculate the absolute value of
both an [integer](CppInt.htm) and a [double](CppDouble.htm), where
[std::fabs](CppFabs.htm) can only be used to obtain the absolute value
of a [double](CppDouble.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
