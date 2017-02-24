



 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#9](CppExerciseNoForLoopsAnswer9.md)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question \#9: Product of std::vector&lt;int&gt;
-----------------------------------------------

 

Replace the [for](CppFor.md)-loop. You will need:

-   [std::accumulate](CppAccumulate.md)
-   [std::multiplies](CppMultiplies.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   int Product(const std::vector<int>& v) {   const int sz = static_cast<int>(v.size());   int product = 1;   for (int i=0; i!=sz; ++i)   {     product*=v[i];   }   return product; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  int Product(const std::vector<int>& v) {   return std::accumulate(v.begin(),v.end(),1,std::multiplies<int>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



