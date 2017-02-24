[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::transform](CppTransform.htm)
===================================================

 

[std::transform](CppTransform.htm) is an [algorithm](CppAlgorithm.htm)
to perform a modifying [function](CppFunction.htm) on the elements of a
sequence (on a [std::vector](CppVector.htm), for example). Use
[std::for\_each](CppFor_each.htm) to perform non-modifying
[functions](CppFunction.htm) on the elements of a sequence.

 

Prefer [algorithms](CppAlgorithm.htm) over hand-written loops
\[0\]\[1\]\[2\]. View [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm) to learn how to remove
hand-written loops .

 

[std::transform](CppTransform.htm) does not use a
[predicate](CppPredicate.htm). Use [Transform\_if](CppTransform_if.htm)
if a [predicate](CppPredicate.htm) is needed.

 

 

 

 

 

Example
-------

 

The code below shows a simple way to multiply all elements in a
[std::vector](CppVector.htm) by a certain value:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void Multiply(std::vector<int>& v, const int x) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)  {     v[i]*=x;   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[std::transform](CppTransform.htm) can be used to replace the
[for](CppFor.htm)-loop in the example below:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),x)); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[std::transform](CppTransform.htm) function [definition](CppDefinition.htm)
---------------------------------------------------------------------------

 

Simplified from the [STL](CppStl.htm) that ships with [C++
Builder](CppBuilder.htm) 6.0:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template    <     class InputIter,     class OutputIter,     class UnaryOperation   >   OutputIter transform(     InputIter first,     InputIter last,     OutputIter result,     UnaryOperation opr   ) {   for ( ; first != last; ++first, ++result)     *result = opr(*first);   return result; }  template    <     class InputIter1,     class InputIter2,     class OutputIter,     class BinaryOperation   >   OutputIter transform(     InputIter1 first1,     InputIter1 last1,     InputIter2 first2,     OutputIter result,     BinaryOperation binary_op   ) {   for ( ; first1 != last1; ++first1, ++first2, ++result)     *result = binary_op(*first1, *first2);   return result; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

[std::transform](CppTransform.htm) does not use a
[predicate](CppPredicate.htm). Use [Transform\_if](CppTransform_if.htm)
if a [predicate](CppPredicate.htm) is needed.

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

-   \[0\] [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++
    Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter
    18.12.1 : 'Prefer algorithms over loops'
-   \[1\] [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'
-   \[2\] [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    88: 'Prefer function objects over functions as algorithm and
    comparer arguments.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
