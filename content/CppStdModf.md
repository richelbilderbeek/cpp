
 

 

 

 

 

([C++](Cpp.md)) [std::modf](CppStdModf.md)
=========================================

 

[std::modf](CppStdModf.md) splits a [double](CppDouble.md) into its
[integer](CppInt.md) and a fractional part, for example it splits 12.34
into 12 and 0.34.

 

-   [Download the Qt Creator project 'Modf' (zip)](CppModf.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream>  int main() {   double int_part = 0.0;   const double fraction_part = std::modf(M_E,&int_part);   std::cout << M_E << " = "     << int_part << " + " << fraction_part << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------
  ` 2.71828 = 2 + 0.718282`
  ---------------------------

 

 

 

 

 

 

