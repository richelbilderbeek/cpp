



 

 

 

 

 

([C++](Cpp.htm)) [operator+](CppOperatorPlus.htm)
=================================================

 

[operator+](CppOperatorPlus.htm) is the [operator](CppOperator.htm) for
adding.

 

The following line of code calls [operator+](CppOperatorPlus.htm) to add
the values of two [integers](CppInt.htm):

 

  --------------------------
  ` const int x = 3 + 4; `
  --------------------------

 

[operator+](CppOperatorPlus.htm) is encapsulated by the
[functor](CppFunctor.htm) [std::plus](CppPlus.htm).

 

 

 

 

 

Example function to overload operator+
--------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>   struct Test {   Test(const int x = 0) : mX(x) {}   int mX; };   const Test operator+(const Test& lhs, const Test& rhs) {   return Test( lhs.mX + rhs.mX ); }   int main() {   const Test t1(3);   const Test t2(4);   const Test t3 = t1 + t2;   assert(t3.mX == 7); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
