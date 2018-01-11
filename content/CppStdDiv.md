
 

 

 

 

 

([C++](Cpp.md)) [std::div](CppStdDiv.md)
=======================================

 

[std::div](CppStdDiv.md) is an [STL](CppStl.md)
[function](CppFunction.md) for [integer](CppInt.md) division, which
creates a [std::div\_t](CppDiv_t.md) containing the quotient and
remainder of the division.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const std::div_t d = std::div(7,3);   //Assume the quotient equals (7 / 3) == 2   assert(d.quot == 2);   //Assume the remainder equals (7 % 3) == 1   assert(d.rem  == 1); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The related [std::ldiv](CppLdiv.md) [function](CppFunction.md) works
on [long ints](CppLongInt.md).

 

 

 

 

 

 

