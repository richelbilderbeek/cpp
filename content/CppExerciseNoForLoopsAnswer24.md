

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#24](CppExerciseNoForLoopsAnswer24.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#24: [SumSecond](CppSumSecond.htm)
--------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [boost::bind](CppBind.htm)
-   [std::plus](CppPlus.htm)

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumSecond(const std::vector<std::pair<int,int> >& v) {   const int size = static_cast<int>(v.size());   int sum = 0;   for (int i=0; i!=size; ++i)   {     sum+=v[i].second;   }   return sum; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![STL](PicStl.png) Answer using [STL](CppStl.htm) only
------------------------------------------------------

 

You may [contact me](Contact.htm) if you have an [STL](CppStl.htm)
solution...

 

 

 

 

 

![Boost](PicBoost.png) Answer using [Boost](CppBoost.htm).Bind
--------------------------------------------------------------

 

Thanks to 'ofwolfandman':

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <functional> #include <numeric> #include <utility> #include <vector> #include <boost/bind.hpp>  int SumSecond(const std::vector<std::pair<int,int> >& v) {   return std::accumulate(     v.begin(),     v.end(),     static_cast<int>(0),     boost::bind(       std::plus<int>(),       _1,       boost::bind<int>(&std::pair<int,int>::second, _2)       )     ); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) Answer using [Boost](CppBoost.htm).Lambda
----------------------------------------------------------------

 

Thanks to 'ofwolfandman':

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <functional> #include <numeric> #include <utility> #include <vector> #include <boost/lambda/lambda.hpp> #include <boost/lambda/bind.hpp>  int SumSecond(const std::vector<std::pair<int,int> >& v) {   return std::accumulate(     v.begin(),     v.end(),     static_cast<int>(0),     boost::lambda::_1     + boost::lambda::bind(       &std::pair<int, int>::second, boost::lambda::_2       )   ); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
