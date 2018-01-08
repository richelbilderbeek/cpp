
 

 

 

 

 

([C++](Cpp.md)) [operator+](CppOperatorPlus.md)
=================================================

 

[operator+](CppOperatorPlus.md) is the [operator](CppOperator.md) for
adding.

 

The following line of code calls [operator+](CppOperatorPlus.md) to add
the values of two [integers](CppInt.md):

 

  --------------------------
  ` const int x = 3 + 4; `
  --------------------------

 

[operator+](CppOperatorPlus.md) is encapsulated by the
[functor](CppFunctor.md) [std::plus](CppStdPlus.md).

 

 

 

 

 

Example function to overload operator+
--------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>   struct Test {   Test(const int x = 0) : mX(x) {}   int mX; };   const Test operator+(const Test& lhs, const Test& rhs) {   return Test( lhs.mX + rhs.mX ); }   int main() {   const Test t1(3);   const Test t2(4);   const Test t3 = t1 + t2;   assert(t3.mX == 7); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

