
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#20](CppExerciseNoForLoopsAnswer20.md)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

Question: [CountNonZeroPositives](CppCountNonZeroPositives.md)
---------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::count\_if](CppCount_if.md)
-   [std::greater](CppStdGreater.md)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int CountNonZeroPositives(const std::vector<int>& v) {   int sum = 0;   const size_t sz = v.size();   for (size_t i = 0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm #include <functional> #include <vector>  //From http://www.richelbilderbeek.nl/CppCountNonZeroPositives.htm int CountNonZeroPositives(const std::vector<int>& v) {   return std::count_if(     v.begin(),     v.end(),     std::bind2nd(std::greater<int>(),0)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

 

