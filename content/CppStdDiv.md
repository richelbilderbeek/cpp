



 

 

 

 

 

([C++](Cpp.htm)) [std::div](CppDiv.htm)
=======================================

 

[std::div](CppDiv.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) for [integer](CppInt.htm) division, which
creates a [std::div\_t](CppDiv_t.htm) containing the quotient and
remainder of the division.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const std::div_t d = std::div(7,3);   //Assume the quotient equals (7 / 3) == 2   assert(d.quot == 2);   //Assume the remainder equals (7 % 3) == 1   assert(d.rem  == 1); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The related [std::ldiv](CppLdiv.htm) [function](CppFunction.htm) works
on [long ints](CppLongInt.htm).

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
