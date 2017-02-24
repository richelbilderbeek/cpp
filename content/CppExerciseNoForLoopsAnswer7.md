

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#9: No for-loops \#7](CppExerciseNoForLoopsAnswer7.htm)
=============================================================================================

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

Question \#7: Widget::DoItOften on Widget\*
-------------------------------------------

 

Replace the **[for](CppFor.htm)**-loop. You will need:

-   [std::bind2nd](CppBind2nd.htm) (or [boost::bind](CppBind.htm))
-   [std::for\_each](CppFor_each.htm)
-   [std::mem\_fun](CppMem_fun.htm) (or [boost::mem\_fn](CppMem_fn.htm))

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget*>& v, const int n) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]->DoItOften(n);   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![STL](PicStl.png) Answer using [STL](CppStl.htm) only
------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget*>& v, const int n) {   std::for_each(     v.begin(),     v.end(),     std::bind2nd(std::mem_fun(&Widget::DoItOften),n)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) Answer using [Boost](CppBoost.htm)
---------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget*>& v, const int n) {   std::for_each(     v.begin(),     v.end(),     boost::bind(&Widget::DoItOften, _1, n)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that you do not need [boost::mem\_fn](CppMem_fn.htm), because it is
added for you. If this is done by hand, like in the code below, the
solution is still correct.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` void DoItOften(const std::vector<Widget*>& v, const int n) {   std::for_each(     v.begin(),     v.end(),     boost::bind(boost::mem_fn(&Widget::DoItOften), _1, n)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note that \_1 is a placeholder of type boost::arg&lt;1&gt; and can be
found in boost/bind/placeholders.hpp.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
