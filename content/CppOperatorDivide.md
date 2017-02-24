

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [operator/](CppOperatorDivide.htm)
===================================================

 

[operator/](CppOperatorDivide.htm) is the [operator](CppOperator.htm)
for dividing.

 

The following line of code calls [operator/](CppOperatorDivide.htm) to
divide the values of two [integers](CppInt.htm):

 

  ---------------------------
  ` const int x = 12 / 4; `
  ---------------------------

 

[operator/](CppOperatorDivide.htm) is encapsulated by the
[functor](CppFunctor.htm) [std::divides](CppDivides.htm).

 

 

 

 

 

Example function to overload operator/
--------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>   struct Test {   Test(const int x = 0) : mX(x) {}   int mX; };   const Test operator/(const Test& lhs, const Test& rhs) {   return Test( lhs.mX / rhs.mX ); }   int main() {   const Test t1(12);   const Test t2(4);   const Test t3 = t1 / t2;   assert(t3.mX == 3); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
