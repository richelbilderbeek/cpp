[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetFactorialTerms](CppGetFactorialTerms.htm)
==============================================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to obtain the
product terms of a [factorial](CppFactorial.htm). One can use this
approach with [DivideTerms](CppDivideTerms.htm) to calculate the
division of large [factorials](CppFactorial.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <functional> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppFunctorIncrease.htm struct Increase : public std::unary_function<void,int> {   explicit Increase(const int& initValue = 0) : mValue(initValue) {}   void operator()(int& anything)   {     anything = mValue;     ++mValue;   }   private:   int mValue; };  //From http://www.richelbilderbeek.nl/CppGetFactorialTerms.htm const std::vector<int> GetFactorialTerms(const int n) {   std::vector<int> v(n);   std::for_each(v.begin(), v.end(),Increase(1));   return v; } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
