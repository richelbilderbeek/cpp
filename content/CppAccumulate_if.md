



 

 

 

 

 

([C++](Cpp.htm)) [accumulate\_if](CppAccumulate_if.htm)
=======================================================

 

[Algorithm](CppAlgorithm.htm) similar to
[std::accumulate](CppAccumulate.htm), except that
[accumulate\_if](CppAccumulate_if.htm) also needs a
[predicate](CppPredicate.htm) [argument](CppArgument.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppAccumulate_if.htm template   <   typename InputIterator,   typename ElementType,   typename Predicate   > const ElementType accumulate_if(   InputIterator first,   const InputIterator last,   ElementType init,   const Predicate predicate) {   for (; first != last; ++first)     if (predicate(*first)) init += *first;   return init; } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppAccumulate_if.htm template   <   typename InputIterator,   typename ElementType,   typename BinaryOperation,   typename Predicate   > const ElementType std::accumulate_if(   InputIterator first,   const InputIterator last,   ElementType init,   const BinaryOperation binary_op,   const Predicate predicate) {   for (; first != last; ++first)     if (predicate(*first)) init = binary_op(init, *first);   return init; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
