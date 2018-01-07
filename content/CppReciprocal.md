
 

 

 

 

 

([C++](Cpp.md)) [Reciprocal](CppReciprocal.md)
================================================

 

[Reciprocal](CppReciprocal.md) is a [container](CppContainer.md) [code
snippet](CppCodeSnippets.md) to replace all values in a
[container](CppContainer.md) by their reciprocal (that is: 1/x) [(view
the wikipedia page on reciprocal)](http://en.wikipedia.org/wiki/1/x).

 

There are multiple ways to perform [Reciprocal](CppReciprocal.md):

-   The general algorithm way (best)
-   The algorithm way on a std::vector&lt;double&gt; (intermediate)
-   The for-loop way on a std::vector&lt;double&gt; (worst)

 

 

 

 

 

The general algorithm way
-------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric>  //From http://www.richelbilderbeek.nl/CppReciprocal.htm template <class Container> void Reciprocal(Container& c) {   std::transform(c.begin(),c.end(),c.begin(),     std::bind1st(std::divides<Container::value_type>(),1.0));     }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

The algorithm way on a [std::vector](CppStdVector.md)&lt;double&gt;
-----------------------------------------------------------------

 

This way is used as an answer in [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm> #include <numeric>  //From http://www.richelbilderbeek.nl/CppReciprocal.htm void Reciprocal(std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind1st(std::divides<double>(),1.0));     }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

The [for](CppFor.md)-loop way on a [std::vector](CppStdVector.md)&lt;[double](CppDouble.md)&gt;
-----------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1,2\].

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppReciprocal.htm void Reciprocal(std::vector<double>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]=1.0/v[i];   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1 :
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'

 

 

 

 

 

 

