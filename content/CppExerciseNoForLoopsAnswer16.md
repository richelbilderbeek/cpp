



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#16](CppExerciseNoForLoopsAnswer16.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#16: Reciprocal
-------------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

-   [std::bind1st](CppBind1st.htm)
-   [std::divides](CppDivides.htm)
-   [std::transform](CppTransform.htm)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Reciprocal (std::vector<double>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]=1.0/v[i];   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppReciprocal.htm void Reciprocal (std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind1st(std::divides<double>(),1.0)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
