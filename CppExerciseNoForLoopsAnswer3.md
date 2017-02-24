[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#3](CppExerciseNoForLoopsAnswer3.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#3: [Add](CppAdd.htm)
-------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::back\_inserter](CppBack_inserter.htm)
-   [std::bind2nd](CppBind2nd.htm)
-   [std::plus](CppPlus.htm)
-   [std::transform](CppTransform.htm)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=x;   }   return v_new; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer
------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm> #include <numeric>  //From http://www.richelbilderbeek.nl/CppAdd.htm  const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new;   std::transform(v.begin(),v.end(),std::back_inserter(v_new),     std::bind2nd(std::plus<int>(),x));   return v_new; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
