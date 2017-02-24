[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#6](CppExerciseNoForLoopsAnswer6.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

Question \#6: Widget::DoIt on Widget\*
--------------------------------------

 

Replace the [for](CppFor.htm)-loop. You will need:

-   [std::for\_each](CppFor_each.htm)
-   [std::mem\_fun](CppMem_fun.htm) (or [boost::mem\_fn](CppMem_fn.htm))

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget*>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer [STL](CppStl.htm)-only
-----------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };   void DoIt(const std::vector<Widget*>& v) {   std::for_each(v.begin(),v.end(),std::mem_fun(&Widget::DoIt)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Answer using [Boost](CppBoost.htm)
----------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <boost/mem_fn.hpp> #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget*>& v) {   std::for_each(v.begin(),v.end(),boost::mem_fn(&Widget::DoIt)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
