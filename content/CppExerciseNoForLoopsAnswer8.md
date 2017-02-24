



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#8](CppExerciseNoForLoopsAnswer8.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

Question \#8: [GetSum](CppGetSum.htm)
-------------------------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

-   [std::accumulate](CppAccumulate.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const int GetSum (const std::vector<int>& v) {   const int sz = static_cast<int>(v.size());   const int sum = 0;   for (int i=0; i!=sz; ++i)   {     sum+=v[i];   }   return sum; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   const int GetSum (const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),0); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



