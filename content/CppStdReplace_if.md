
 

 

 

 

 

([C++](Cpp.md)) [std::replace\_if](CppReplace_if.md)
======================================================

 

[std::replace\_if](CppReplace_if.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to replace elements of a sequence (on a
[std::vector](CppVector.md), for example) that satisfy a certain
predicate. Use [std::replace](CppReplace.md) if no
[predicate](CppPredicate.md) is needed (that is: a certain value must
always be replaced).

 

Prefer [algorithms](CppAlgorithm.md) over hand-written loops \[1-3\].
[Exercise \#9: No for-loops](CppExerciseNoForLoops.md) shows how to
remove hand-written loops.

 

 

 

 

 

Example
-------

 

The code below shows how to replace all values that are negative to
zero:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   //From http://www.richelbilderbeek.nl/CppReplaceNegativeByZero.htm void ReplaceNegativeByZero(std::vector<int>& v) {   std::replace_if(v.begin(),v.end(),     std::bind2nd(std::less<int>(),0),0); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[replace\_if](CppReplace_if.md) [function](CppFunction.md) [definition](CppDefinition.md)
--------------------------------------------------------------------------------------------

 

Simplified and modified from the [STL](CppStl.md) that ships with [C++
Builder 6.0](CppBuilder.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template <   class ForwardIter,   class Predicate,   class Tp > void replace_if(   ForwardIter first,   const ForwardIter last,   const Predicate pred,   const Tp& newvalue) {   for ( ; first != last; ++first)   {     if (pred(*first))     {       *first = newvalue;     }   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::replace\_if](http://www.cplusplus.com/reference/algorithm/replace_if)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1 :
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'
3.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    88: 'Prefer function objects over functions as algorithm and
    comparer arguments.'

 

 

 

 

 

 

