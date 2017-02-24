



 

 

 

 

 

([C++](Cpp.htm)) [Transform\_if](CppTransform_if.htm)
=====================================================

 

My modification of [std::transform](CppTransform.htm) to make it work
with a [predicate](CppPredicate.htm).

 

Prefer [algorithms](CppAlgorithm.htm) over hand-written loops \[1-3\].
View [Exercise \#9: No for-loops](CppExerciseNoForLoops.htm) to learn
how to remove hand-written loops.

 

Transform\_if function definition
---------------------------------

 

Simplified from the STL that ships with C++ Builder 6.0.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppTransform_if.htm template <   class InputIter,   class OutputIter,   class Predicate,   class UnaryOperation   > const OutputIter Transform_if(   InputIter first,   const InputIter last,   OutputIter result,   const Predicate pred,   const UnaryOperation opr) {   for ( ; first != last; ++first, ++result)     *result = pred(*first) ? opr(*first) : *first;   return result; }    //From http://www.richelbilderbeek.nl/CppTransform_if.htm template <   class InputIter1,    class InputIter2,    class OutputIter,   class Predicate,   class BinaryOperation> const OutputIter Transform_if(   InputIter1 first1,   const InputIter1 last1,   InputIter2 first2,   OutputIter result,   const Predicate pred,   const BinaryOperation binary_op) {   for ( ; first1 != last1; ++first1, ++first2, ++result)     *result = pred(*first1) ? binary_op(*first1, *first2) : *first1;   return result; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Bjarne Stroustrup. The C++ Programming Language (3rd edition).
    ISBN: 0-201-88954-4. Chapter 18.12.1 : 'Prefer algorithms over
    loops'
2.  Herb Sutter and Andrei Alexandrescu. C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops.'
3.  Herb Sutter and Andrei Alexandrescu. C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    88: 'Prefer function objects over functions as algorithm and
    comparer arguments.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
