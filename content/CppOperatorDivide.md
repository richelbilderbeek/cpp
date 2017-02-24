



 

 

 

 

 

([C++](Cpp.md)) [operator/](CppOperatorDivide.md)
===================================================

 

[operator/](CppOperatorDivide.md) is the [operator](CppOperator.md)
for dividing.

 

The following line of code calls [operator/](CppOperatorDivide.md) to
divide the values of two [integers](CppInt.md):

 

  ---------------------------
  ` const int x = 12 / 4; `
  ---------------------------

 

[operator/](CppOperatorDivide.md) is encapsulated by the
[functor](CppFunctor.md) [std::divides](CppDivides.md).

 

 

 

 

 

Example function to overload operator/
--------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>   struct Test {   Test(const int x = 0) : mX(x) {}   int mX; };   const Test operator/(const Test& lhs, const Test& rhs) {   return Test( lhs.mX / rhs.mX ); }   int main() {   const Test t1(12);   const Test t2(4);   const Test t3 = t1 / t2;   assert(t3.mX == 3); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



