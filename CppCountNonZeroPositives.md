[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CountNonZeroPositives](CppCountNonZeroPositives.htm)
======================================================================

 

[Code snippet](CppCodeSnippets.htm) to count the number of non-zero
positive values in a [std::vector](CppVector.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <functional> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroPositives int CountNonZeroPositives(const std::vector<int>& v) {  return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::greater<int>(),0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[CountNonZeroPositives](CppCountNonZeroPositives.htm) test
----------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert>  int main() {   std::vector<int> v;   v.push_back(-3); assert(CountNonZeroPositives(v)==0);   v.push_back(-2); assert(CountNonZeroPositives(v)==0);   v.push_back(-1); assert(CountNonZeroPositives(v)==0);   v.push_back( 0); assert(CountNonZeroPositives(v)==0);   v.push_back( 1); assert(CountNonZeroPositives(v)==1);   v.push_back( 2); assert(CountNonZeroPositives(v)==2);   v.push_back( 3); assert(CountNonZeroPositives(v)==3);   v.push_back( 4); assert(CountNonZeroPositives(v)==4); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
