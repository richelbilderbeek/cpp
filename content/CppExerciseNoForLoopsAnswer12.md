



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#12](CppExerciseNoForLoopsAnswer12.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#12: Replace negative by zero
---------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::less](CppLess.htm)
-   [std::replace\_if](CppReplace_if.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void ReplaceNegativeByZero(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     if(v[i]<0) v[i]=0;   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   //From http://www.richelbilderbeek.nl/CppReplaceNegativeByZero.htm void ReplaceNegativeByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::less<int>(),0),0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



