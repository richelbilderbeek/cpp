



 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#4](CppExerciseNoForLoopsAnswer4.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

-   [Download the Qt Creator project
    'CppExerciseNoForLoopsAnswer4' (zip)](CppExerciseNoForLoopsAnswer4.zip)

 

 

 

 

 

Question \#4: Widget::DoIt on Widget
------------------------------------

 

Replace the [for](CppFor.htm)-loop. You will need
[std::for\_each](CppFor_each.htm) and
[std::mem\_fun\_ref](CppMem_fun_ref.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i].DoIt();   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) Answer using [C++98](Cpp98.htm) its [STL](CppStl.htm)
----------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector>  struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget>& v) {   std::for_each(v.begin(),v.end(),std::mem_fun_ref(&Widget::DoIt)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) Answer using [C++98](Cpp98.htm) and [Boost](CppBoost.htm)
------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector> #include <boost/mem_fn.hpp>  struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget>& v) {   std::for_each(v.begin(),v.end(),boost::mem_fn(&Widget::DoIt)); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) Answer using [C++11](Cpp11.htm) its [STL](CppStl.htm)
----------------------------------------------------------------------------------------------

 

Instead of using a [functor](CppFunctor.htm), use a [lambda
expressions](CppLambdaExpression.htm).

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  void DoIt(const std::vector<Widget>& v) {   std::for_each(v.begin(),v.end(),[](const Widget& w) { w.DoIt(); } ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
