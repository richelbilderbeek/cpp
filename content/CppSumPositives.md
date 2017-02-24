
 

 

 

 

 

([C++](Cpp.md)) [SumPositives](CppSumPositives.md)
====================================================

 

[Math](CppMath.md) [code snippet](CppCodeSnippets.md) to sum all
positive elements in a [container](CppContainer.md).

 

There are multiple ways to implement
[SumPositives](CppSumPositives.md):

1.  Using an [algorithm](CppAlgorithm.md) (preferred \[1\]\[2\])
2.  Using a for-loop

 

 

 

 

 

[SumPositives](CppSumPositives.md) using an [algorithm](CppAlgorithm.md)
--------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumPositives(const std::vector<int>& v) {   const std::size_t sz = v.size();   int sum = 0;   for (std::size_t i=0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[SumPositives](CppSumPositives.md) using a **[for](CppFor.md)**-loop
----------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template<typename InputIterator, typename ElementType, typename Predicate> const ElementType accumulate_if(   InputIterator first,   const InputIterator last,   ElementType init,   const Predicate predicate) {   for (; first != last; ++first)     if (predicate(*first)) init += *first;   return init; }  #include <vector> #include <functional>  int SumPositives(const std::vector<int>& v) {   return ::accumulate_if(v.begin(),v.end(),0,std::bind2nd(std::greater<int>(),0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The [C++](Cpp.md)
    Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter
    18.12.1 : 'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). [C++](Cpp.md) coding
    standards: 101 rules, guidelines, and best practices.
    ISBN: 0-32-111358-6. Chapter 84: 'Prefer algorithm calls to
    handwritten loops.'

 

 

 

 

 

 

