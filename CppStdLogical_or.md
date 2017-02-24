[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::logical\_or](CppLogical_or.htm)
======================================================

 

[std::logical\_or](CppLogical_not.htm) is a [functor](CppFunctor.htm)
that performs a [operator||](CppOperatorLogicalOr.htm) on two elements.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  int main() {   //Use of C++11 initializer lists   const std::vector<bool> a = { false, false, true , true };   const std::vector<bool> b = { false, true , false, true };    std::vector<bool> truth_table(4);   std::transform(     a.begin(),     a.end(),     b.begin(),     truth_table.begin(),     std::logical_or;<bool>());    assert(a[0] || b[0] == truth_table[0]);   assert(a[1] || b[1] == truth_table[1]);   assert(a[2] || b[2] == truth_table[2]);   assert(a[3] || b[3] == truth_table[3]); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::logical\_or](http://www.cplusplus.com/reference/std/functional/logical_or)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
