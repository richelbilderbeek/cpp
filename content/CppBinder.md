



 

 

 

 

 

([C++](Cpp.htm)) [Binder](CppBinder.htm)
========================================

 

 

A [binder](CppBinder.htm) is a type of [adapter](CppAdapter.htm) that
allows a two-argument function object to be used as a single-argument
function by binding one argument to a value \[1\].
[Binders](CppBinder.htm) are useful when using
[algorithms](CppAlgorithm.htm).

 

There are two [STL](CppStl.htm) [binders](CppBinder.htm):

-   [std::bind1st](CppBind1st.htm)
-   [std::bind2nd](CppBind2nd.htm)

 

There is one [Boost](CppBoost.htm) [binder](CppBinder.htm):

-   [boost::bind](CppBind.htm)

 

Using [boost::bind](CppBind.htm) results in easier to read and shorter
code.

 

 

 

 

 

Replacing a [for](CppFor.htm) loop by an [algorithm](CppAlgorithm.htm) using [std::bind2nd](CppBind2nd.htm) and [boost::bind](CppBind.htm)
------------------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget>& v, const int n) {   const std::size_t sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i].DoItOften(n);   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget>& v, const int n) {   std::for_each(v.begin(),v.end(),     std::bind2nd(std::mem_fun_ref(&Widget::DoItOften),n)   ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector> #include <boost/bind.hpp>   struct Widget {   void DoItOften(const int n) const { /* do it n times */ } };   void DoItOften(const std::vector<Widget>& v, const int n) {   std::for_each(v.begin(),v.end(),     boost::bind(&Widget::DoItOften, _1, n)   ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [Lambda expressions](CppLambdaExpression.htm) over
    [binders](CppBinder.htm) \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.4.4: 'A
    binder allows a two-argument function object to be used as a
    single-argument function by binding one argument to a value.'
2.  [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer Lambdas over
    Binders'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
