



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#17](CppExerciseNoForLoopsAnswer17.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#17: Halve
--------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm)
-   [std::divides](CppDivides.htm)
-   [std::transform](CppTransform.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Halve (std::vector<double>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]/=2.0;   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   //From http://www.richelbilderbeek.nl/CppHalve.htm void Halve (std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::divides<double>(),2.0)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
