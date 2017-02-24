

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [operator\^=](CppOperatorBitwiseXorAssign.htm)
===============================================================

 

[operator\^=](CppOperatorBitwiseXorAssign.htm) (pronounced as 'bitwise
xor operator') is an [operator](CppOperator.htm) to perform a xor and
subsequently assign the result.

 

In the example below a '0011' is performed xor on with '0101' yielding
'0110', which equals the decimal value of 6.

 

  --------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   int i = 3; //0011   int j = 5; //0101   i^=j;      //0110   assert(i==6); } `
  --------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
