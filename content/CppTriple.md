



 

 

 

 

 

([C++](Cpp.htm)) [Triple](CppTriple.htm)
========================================

 

[Container](CppContainer.htm) [code snippet](CppCodeSnippets.htm) to
triple all values in a [container](CppContainer.htm).

 

There are multiple ways to perform [Triple](CppTriple.htm):

-   ![C++98](PicCpp98.png)![STL](PicStl.png) The general
    [algorithm](CppAlgorithm.htm) way using
    [std::bind2nd](CppBind2nd.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) The general
    [algorithm](CppAlgorithm.htm) way using
    [BOOST\_FOREACH](CppBOOST_FOREACH.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) The general
    [algorithm](CppAlgorithm.htm) way using
    [boost::lambda](CppLambda.htm)
-   ![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.htm)
    algorithm way on a
    [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
-   ![C++11](PicCpp11.png)![STL](PicStl.png) Using a [C++11](Cpp11.htm)
    [lambda expressions](CppLambdaExpression.htm) on a
    [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
-   ![C++98](PicCpp98.png) The [for](CppFor.htm)-loop way on a
    [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;

 

-   [Download the Qt Creator project 'CppTriple' (zip)](CppTriple.zip)

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) The general [algorithm](CppAlgorithm.htm) way using [std::bind2nd](CppBind2nd.htm)
---------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <functional>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   std::transform(c.begin(),c.end(),c.begin(),     std::bind2nd(std::multiplies<typename Container::value_type>(),3)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) The general [algorithm](CppAlgorithm.htm) way using [BOOST\_FOREACH](CppBOOST_FOREACH.htm)
---------------------------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/foreach.hpp>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   BOOST_FOREACH(typename Container::value_type& i, c)   {     i*=3;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) The general [algorithm](CppAlgorithm.htm) way using [boost::lambda](CppLambda.htm)
-------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <boost/lambda/lambda.hpp>  template <class Container> void Triple(Container& c) {   std::for_each(c.begin(),c.end(), boost::lambda::_1 *=3); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.htm) algorithm way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------------------------------------------------------------------

 

This version is given as the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),3)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) Using a [C++11](Cpp11.htm) [lambda expressions](CppLambdaExpression.htm) on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppTriple.htm void TripleCpp0x(std::vector<int>& v) {   std::for_each(v.begin(),v.end(),     [](int& i) { i*=3; } ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) The [for](CppFor.htm)-loop way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\]

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
