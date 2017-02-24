[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::modf](CppModf.htm)
=========================================

 

[std::modf](CppModf.htm) splits a [double](CppDouble.htm) into its
[integer](CppInt.htm) and a fractional part, for example it splits 12.34
into 12 and 0.34.

 

-   [Download the Qt Creator project 'Modf' (zip)](CppModf.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <iostream>  int main() {   double int_part = 0.0;   const double fraction_part = std::modf(M_E,&int_part);   std::cout << M_E << " = "     << int_part << " + " << fraction_part << '\n'; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------
  ` 2.71828 = 2 + 0.718282`
  ---------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
