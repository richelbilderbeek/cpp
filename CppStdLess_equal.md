[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::less\_equal](CppLess_equal.htm)
======================================================

 

[std::less\_equal](CppLess_equal.htm) is an [STL](CppStl.htm)
[predicate](CppPredicate.htm) to perform
[operator&lt;=](CppOperatorLessEqual.htm) on two values.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   //Create a std::vector with values {0,1,2,3,4,5}   std::vector<int> v;   for (int i = 0; i!=6; ++i) v.push_back(i);    //Count the values less or equal to two   const int n     = std::count_if(         v.begin(),v.end(),         std::bind2nd(std::less_equal<int>(),2));    //Assume there are three values less or equal to two   assert(n==3); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
