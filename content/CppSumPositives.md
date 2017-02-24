

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SumPositives](CppSumPositives.htm)
====================================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to sum all
positive elements in a [container](CppContainer.htm).

 

There are multiple ways to implement
[SumPositives](CppSumPositives.htm):

1.  Using an [algorithm](CppAlgorithm.htm) (preferred \[1\]\[2\])
2.  Using a for-loop

 

 

 

 

 

[SumPositives](CppSumPositives.htm) using an [algorithm](CppAlgorithm.htm)
--------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` int SumPositives(const std::vector<int>& v) {   const std::size_t sz = v.size();   int sum = 0;   for (std::size_t i=0; i!=sz; ++i)   {     if (v[i]>0) sum+=v[i];   }   return sum; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[SumPositives](CppSumPositives.htm) using a **[for](CppFor.htm)**-loop
----------------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` template<typename InputIterator, typename ElementType, typename Predicate> const ElementType accumulate_if(   InputIterator first,   const InputIterator last,   ElementType init,   const Predicate predicate) {   for (; first != last; ++first)     if (predicate(*first)) init += *first;   return init; }  #include <vector> #include <functional>  int SumPositives(const std::vector<int>& v) {   return ::accumulate_if(v.begin(),v.end(),0,std::bind2nd(std::greater<int>(),0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The [C++](Cpp.htm)
    Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter
    18.12.1 : 'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). [C++](Cpp.htm) coding
    standards: 101 rules, guidelines, and best practices.
    ISBN: 0-32-111358-6. Chapter 84: 'Prefer algorithm calls to
    handwritten loops.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
