
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#17](CppExerciseNoForLoopsAnswer17.md)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question \#17: Halve
--------------------

 

Replace the [for](CppFor.md)-loop. You will need:

-   [std::bind2nd](CppStdBind2nd.md)
-   [std::divides](CppDivides.md)
-   [std::transform](CppTransform.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Halve (std::vector<double>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]/=2.0;   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   //From http://www.richelbilderbeek.nl/CppHalve.htm void Halve (std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::divides<double>(),2.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

