



 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#11](CppExerciseNoForLoopsAnswer11.md)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question \#11: Replace zero by one
----------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [std::replace](CppReplace.md) (or
    [std::replace\_if](CppReplace_if.md) with
    [std::bind2nd](CppBind2nd.md))

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void ReplaceZeroByOne(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     if(v[i]==0) v[i]=1;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer using [std::replace](CppReplace.md)
-------------------------------------------

 

The preferred way: it is easiest to read and shortest to write.

 

  -----------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm   void ReplaceZeroByOne(std::vector<int>& v) {   std::replace(v.begin(),v.end(),0,1);  }`
  -----------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer using [std::replace\_if](CppReplace_if.md)
--------------------------------------------------

 

Not preferred, use the solution above instead.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   void ReplaceZeroByOne(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::equal_to<int>(),0),1); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



