



 

 

 

 

 

([C++](Cpp.md)) [Triple](CppTriple.md)
========================================

 

[Container](CppContainer.md) [code snippet](CppCodeSnippets.md) to
triple all values in a [container](CppContainer.md).

 

There are multiple ways to perform [Triple](CppTriple.md):

-   ![C++98](PicCpp98.png)![STL](PicStl.png) The general
    [algorithm](CppAlgorithm.md) way using
    [std::bind2nd](CppBind2nd.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) The general
    [algorithm](CppAlgorithm.md) way using
    [BOOST\_FOREACH](CppBOOST_FOREACH.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png) The general
    [algorithm](CppAlgorithm.md) way using
    [boost::lambda](CppLambda.md)
-   ![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.md)
    algorithm way on a
    [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
-   ![C++11](PicCpp11.png)![STL](PicStl.png) Using a [C++11](Cpp11.md)
    [lambda expressions](CppLambdaExpression.md) on a
    [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
-   ![C++98](PicCpp98.png) The [for](CppFor.md)-loop way on a
    [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;

 

-   [Download the Qt Creator project 'CppTriple' (zip)](CppTriple.zip)

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) The general [algorithm](CppAlgorithm.md) way using [std::bind2nd](CppBind2nd.md)
---------------------------------------------------------------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <functional>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   std::transform(c.begin(),c.end(),c.begin(),     std::bind2nd(std::multiplies<typename Container::value_type>(),3)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) The general [algorithm](CppAlgorithm.md) way using [BOOST\_FOREACH](CppBOOST_FOREACH.md)
---------------------------------------------------------------------------------------------------------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/foreach.hpp>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   BOOST_FOREACH(typename Container::value_type& i, c)   {     i*=3;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) The general [algorithm](CppAlgorithm.md) way using [boost::lambda](CppLambda.md)
-------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <boost/lambda/lambda.hpp>  template <class Container> void Triple(Container& c) {   std::for_each(c.begin(),c.end(), boost::lambda::_1 *=3); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.md) algorithm way on a [std::vector](CppVector.md)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------------------------------------------------------------------

 

This version is given as the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm #include <numeric>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),3)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) Using a [C++11](Cpp11.md) [lambda expressions](CppLambdaExpression.md) on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppTriple.htm void TripleCpp0x(std::vector<int>& v) {   std::for_each(v.begin(),v.end(),     [](int& i) { i*=3; } ); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) The [for](CppFor.md)-loop way on a [std::vector](CppVector.md)&lt;[int](CppInt.htm)&gt;
----------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\]

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 





 



