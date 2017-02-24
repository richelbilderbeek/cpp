



 

 

 

 

 

([C++](Cpp.md)) [MakeAbs](CppMakeAbs.md)
==========================================

 

[Math](CppMath.md) [code snippet](CppCodeSnippets.md) to make all
elements in a [container](CppContainer.md) positive.

 

There are multiple ways to implement [MakeAbs](CppMakeAbs.md):

1.  Using an [algorithm](CppAlgorithm.md) (preferred \[1\]\[2\])
2.  Using a [for](CppFor.md)-loop

 

 

 

 

 

[MakeAbs](CppMakeAbs.md) using an [algorithm](CppAlgorithm.md)
----------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cmath> #include <functional> #include <vector>  template <class T> struct Abs : public std::unary_function<T,T> {   const T operator()(const T& x) const { return std::abs(x); } };  void MakeAbs(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Abs<int>()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note: I did not find any way to refrain from writing a
[functor](CppFunctor.md) (for example, by using
[std::ptr\_fun](CppPtr_fun.md)) as shown in the lines below...

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::transform(v.begin(),v.end(),v.begin(),std::abs); //Does not work std::transform(v.begin(),v.end(),v.begin(),&std::abs); //Does not work std::transform(v.begin(),v.end(),v.begin(),std::ptr_fun(&std::abs)); //Does not work std::transform(v.begin(),v.end(),v.begin(),std::ptr_fun(std::abs)); //Does not work`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[MakeAbs](CppMakeAbs.md) using a [for](CppFor.md)-loop
--------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   void MakeAbs(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i] = std::abs(v[i]);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 





 



