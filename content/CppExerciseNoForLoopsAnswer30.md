# ([C++](Cpp.md)) [Answer of exercise \#9: No for-loops \#30](CppExerciseNoForLoopsAnswer30.md)

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

Question \#30: Get maximum value from [std::map](CppStdMap.md)&lt;**[const](CppConst.md)** Person \*,**[int](CppInt.md)**&gt;
-----------------------------------------------------------------------------------------------------------------------------

 

Replace the **[for](CppFor.md)**-loop. You will need:

-   [boost::bind](CppStdBind.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <limits> #include <map> #include <boost/foreach.hpp>  struct Person { };  const Person * GetPersonWithMaxIdStl(const std::map<const Person *,int>& v) {   assert(!v.empty());   int max_id =  std::numeric_limits<int>::min();   const Person * ptr = 0;   typedef std::pair<const Person *,int> Pair;   BOOST_FOREACH(const Pair& p,v)   {     if (p.second > max_id)     {       max_id = p.second;       ptr = p.first;     }   }   assert(ptr);   return ptr; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) Answer using [Boost](CppBoost.md).Bind
--------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <map> #include <boost/lambda/bind.hpp> #include <boost/lambda/lambda.hpp>  struct Person {};  const Person * GetPersonWithMaxId(const std::map<const Person *,int>& v) {   assert(!v.empty());   return std::max_element(     v.begin(),v.end(),     boost::lambda::bind(&std::pair<const Person *,int>::second, boost::lambda::_2)      > boost::lambda::bind(&std::pair<const Person *,int>::second, boost::lambda::_1)    )->first; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

