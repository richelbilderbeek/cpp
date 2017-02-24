

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [MakeAbs](CppMakeAbs.htm)
==========================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to make all
elements in a [container](CppContainer.htm) positive.

 

There are multiple ways to implement [MakeAbs](CppMakeAbs.htm):

1.  Using an [algorithm](CppAlgorithm.htm) (preferred \[1\]\[2\])
2.  Using a [for](CppFor.htm)-loop

 

 

 

 

 

[MakeAbs](CppMakeAbs.htm) using an [algorithm](CppAlgorithm.htm)
----------------------------------------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cmath> #include <functional> #include <vector>  template <class T> struct Abs : public std::unary_function<T,T> {   const T operator()(const T& x) const { return std::abs(x); } };  void MakeAbs(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Abs<int>()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Note: I did not find any way to refrain from writing a
[functor](CppFunctor.htm) (for example, by using
[std::ptr\_fun](CppPtr_fun.htm)) as shown in the lines below...

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` std::transform(v.begin(),v.end(),v.begin(),std::abs); //Does not work std::transform(v.begin(),v.end(),v.begin(),&std::abs); //Does not work std::transform(v.begin(),v.end(),v.begin(),std::ptr_fun(&std::abs)); //Does not work std::transform(v.begin(),v.end(),v.begin(),std::ptr_fun(std::abs)); //Does not work`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[MakeAbs](CppMakeAbs.htm) using a [for](CppFor.htm)-loop
--------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cmath> #include <vector>   void MakeAbs(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i] = std::abs(v[i]);   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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
