[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#9](CppExerciseNoForLoopsAnswer9.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#9: Product of std::vector&lt;int&gt;
-----------------------------------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

-   [std::accumulate](CppAccumulate.htm)
-   [std::multiplies](CppMultiplies.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   int Product(const std::vector<int>& v) {   const int sz = static_cast<int>(v.size());   int product = 1;   for (int i=0; i!=sz; ++i)   {     product*=v[i];   }   return product; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  int Product(const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),1,std::multiplies<int>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
