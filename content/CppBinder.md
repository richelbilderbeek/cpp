
 

 

 

 

 

([C++](Cpp.md)) [Binder](CppBinder.md)
========================================

 

 

A [binder](CppBinder.md) is a type of [adapter](CppAdapter.md) that
allows a two-argument function object to be used as a single-argument
function by binding one argument to a value \[1\].
[Binders](CppBinder.md) are useful when using
[algorithms](CppAlgorithm.md).

 

There are two [STL](CppStl.md) [binders](CppBinder.md):

-   [std::bind1st](CppBind1st.md)
-   [std::bind2nd](CppBind2nd.md)

 

There is one [Boost](CppBoost.md) [binder](CppBinder.md):

-   [boost::bind](CppBind.md)

 

Using [boost::bind](CppBind.md) results in easier to read and shorter
code.

 

 

 

 

 

Replacing a [for](CppFor.md) loop by an [algorithm](CppAlgorithm.md) using [std::bind2nd](CppBind2nd.md) and [boost::bind](CppBind.md)
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

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [Lambda expressions](CppLambdaExpression.md) over
    [binders](CppBinder.md) \[2\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.4.4: 'A
    binder allows a two-argument function object to be used as a
    single-argument function by binding one argument to a value.'
2.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer Lambdas over
    Binders'

 

 

 

 

 

 

