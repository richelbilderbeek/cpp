
 

 

 

 

 

([C++](Cpp.md)) [operator\^=](CppOperatorBitwiseXorAssign.md)
===============================================================

 

[operator\^=](CppOperatorBitwiseXorAssign.md) (pronounced as 'bitwise
xor operator') is an [operator](CppOperator.md) to perform a xor and
subsequently assign the result.

 

In the example below a '0011' is performed xor on with '0101' yielding
'0110', which equals the decimal value of 6.

 

  --------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   int i = 3; //0011   int j = 5; //0101   i^=j;      //0110   assert(i==6); } `
  --------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

