

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#29](CppExerciseNoForLoopsAnswer29.htm)
===============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#29: GetAllTrue on [std::map](CppMap.htm)&lt;**[int](CppInt.htm)**,**[bool](CppBool.htm)**&gt;
--------------------------------------------------------------------------------------------------------

 

Replace the [BOOST\_FOREACH](CppBOOST_FOREACH.htm). You will need:

-   [boost::bind](CppBind.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <map> #include <boost/foreach.hpp>  ///Returns true if all bools are true bool GetAllTrue(const std::map<int,bool>& v) {   assert(!v.empty());   typedef std::pair<int,bool> Pair;   BOOST_FOREACH(const Pair& p,v)   {     if (p.second == false) return false;   }   return true; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) Answer using [Boost](CppBoost.htm).Bind
--------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <map> #include <boost/lambda/bind.hpp> #include <boost/lambda/lambda.hpp>  ///Returns true if all bools are true bool GetAllTrue(const std::map<int,bool>& v) {   return std::find_if(     v.begin(),     v.end(),    boost::lambda::bind(&std::pair<int,bool>::second, boost::lambda::_1) == false)      == v.end(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
