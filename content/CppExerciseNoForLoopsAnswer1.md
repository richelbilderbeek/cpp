[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#1](CppExerciseNoForLoopsAnswer1.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#1: [AddTwo](CppAddTwo.htm)
-------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::back\_inserter](CppBack_inserter.htm)
-   [std::bind2nd](CppBind2nd.htm)
-   [std::plus](CppPlus.htm)
-   [std::transform](CppTransform.htm)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=2;   }   return v_new; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm> #include <numeric>  const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> v_new;   std::transform(v.begin(),v.end(),std::back_inserter(v_new),     std::bind2nd(std::plus<int>(),2));   return v_new; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
