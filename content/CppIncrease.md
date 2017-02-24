



 

 

 

 

 

([C++](Cpp.htm)) [Increase](CppFunctorIncrease.htm)
===================================================

 

[Increase](CppFunctorIncrease.htm) is a [functor](CppFunctor.htm) that
produces [integer](CppInt.htm) values which get increasingly higher.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <functional>  //From http://www.richelbilderbeek.nl/CppFunctorIncrease.htm struct Increase : public std::unary_function<void,int> {   explicit Increase(const int initValue = 0) : mValue(initValue) {}   void operator()(int& anything)   {     anything = mValue;     ++mValue;   }    private:   int mValue; };  int main() {   std::vector<int> v(10);   std::for_each(v.begin(), v.end(), Increase() );   assert(v[0] == 0);   assert(v[1] == 1);   assert(v[2] == 2);   assert(v[3] == 3);   assert(v[4] == 4); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppIncrease' (zip)](CppIncrease.zip)

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
