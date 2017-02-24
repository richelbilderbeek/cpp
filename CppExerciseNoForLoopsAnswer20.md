[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#20](CppExerciseNoForLoopsAnswer20.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

Question: [CountNonZeroPositives](CppCountNonZeroPositives.htm)
---------------------------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::count\_if](CppCount_if.htm)
-   [std::greater](CppGreater.htm)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int CountNonZeroPositives(const std::vector<int>& v) {   int sum = 0;   const size_t sz = v.size();   for (size_t i = 0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <functional> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroPositives.htm int CountNonZeroPositives(const std::vector<int>& v) {   return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::greater<int>(),0)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
