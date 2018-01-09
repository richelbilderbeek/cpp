
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#16](CppExerciseNoForLoopsAnswer16.md)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question \#16: Reciprocal
-------------------------

 

Replace the [for](CppFor.md)-loop. You will need:

-   [std::bind1st](CppStdBind1st.md)
-   [std::divides](CppDivides.md)
-   [std::transform](CppTransform.md)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Reciprocal (std::vector<double>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]=1.0/v[i];   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppReciprocal.htm void Reciprocal (std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind1st(std::divides<double>(),1.0)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

