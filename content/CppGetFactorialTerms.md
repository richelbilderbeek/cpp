



 

 

 

 

 

([C++](Cpp.md)) [GetFactorialTerms](CppGetFactorialTerms.md)
==============================================================

 

[Math](CppMath.md) [code snippet](CppCodeSnippets.md) to obtain the
product terms of a [factorial](CppFactorial.md). One can use this
approach with [DivideTerms](CppDivideTerms.md) to calculate the
division of large [factorials](CppFactorial.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <functional> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppFunctorIncrease.htm struct Increase : public std::unary_function<void,int> {   explicit Increase(const int& initValue = 0) : mValue(initValue) {}   void operator()(int& anything)   {     anything = mValue;     ++mValue;   }   private:   int mValue; };  //From http://www.richelbilderbeek.nl/CppGetFactorialTerms.htm const std::vector<int> GetFactorialTerms(const int n) {   std::vector<int> v(n);   std::for_each(v.begin(), v.end(),Increase(1));   return v; } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



