
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#0](CppExerciseNoForLoopsAnswer0.md)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question
--------

 

Replace the for-loop. You will need the following:

-   [std::for\_each](CppStdFor_each.md)
-   [std::bind2nd](CppStdBind2nd.md)
-   [std::multiplies](CppStdMultiplies.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>   void Triple(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),3)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

