



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#0](CppExerciseNoForLoopsAnswer0.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question
--------

 

Replace the for-loop. You will need the following:

-   [std::for\_each](CppFor_each.htm)
-   [std::bind2nd](CppBind2nd.htm)
-   [std::multiplies](CppMultiplies.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   void Triple(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),3)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



