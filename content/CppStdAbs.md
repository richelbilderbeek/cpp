

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::abs](CppAbs.htm)
=======================================

 

[std::abs](CppAbs.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to take the absolute value of a number (both
[int](CppInt.htm) and [double](CppDouble.htm)).

 

[std::abs](CppAbs.htm) is defined in the [header
files](CppHeaderFile.htm) [cmath.h](CppCmathH.htm) (for
[doubles](CppDouble.htm)) and [cstdlib.h](CppCstdlibH.htm) (for
[integers](CppInt.htm)).

 

 

 

 

 

[std::abs](CppAbs.htm) on [double](CppDouble.htm)
-------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cmath>  int main() {   const double x = 3.14;   const double y = -x;   assert(x == std::abs(y)); }`
  ------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[std::abs](CppAbs.htm) on [int](CppInt.htm)
-------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const int x = 3;   const int y = -x;   assert(x == std::abs(y)); }`
  -----------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Difference between [std::abs](CppAbs.htm) and [std::fabs](CppFabs.htm)
----------------------------------------------------------------------

 

[std::abs](CppAbs.htm) can be used to calculate the absolute value of
both an [integer](CppInt.htm) and a [double](CppDouble.htm), where
[std::fabs](CppFabs.htm) can only be used to obtain the absolute value
of a [double](CppDouble.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
