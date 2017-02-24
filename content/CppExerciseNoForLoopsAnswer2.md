



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#2](CppExerciseNoForLoopsAnswer2.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#2: [Multiply](CppMultiply.htm)
-----------------------------------------

 

Replace the [for](CppFor.htm)-loop. You will need

-   [std::bind2nd](CppBind2nd.htm) (or [boost::bind](CppBind.htm))
-   [std::multiplies](CppMultiplies.htm)
-   [std::transform](CppTransform.htm)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Multiply(std::vector<int>& v, const int x) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=x;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer using [STL](CppStl.htm) only
-----------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm> #include <numeric>   void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),x)); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer using [Boost](CppBoost.htm)
----------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm> #include <numeric> #include <boost/bind.hpp>   void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     boost::bind(std::multiplies<int>(),_1,x)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
