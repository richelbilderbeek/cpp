



 

 

 

 

 

([C++](Cpp.htm)) [MakeSquare](CppMakeSquare.htm)
================================================

 

[Math](CppMath.htm) [code snippet](CppCodeSnippets.htm) to square all
elements in a [container](CppContainer.htm) (that is: to multiply each
element with itself).

 

There are multiple ways to implement [MakeSquare](CppMakeSquare.htm):

1.  Using an [algorithm](CppAlgorithm.htm) (preferred \[1\]\[2\])
2.  Using a for-loop

 

 

 

 

 

[MakeSquare](CppMakeSquare.htm) using an [algorithm](CppAlgorithm.htm)
----------------------------------------------------------------------

 

This is the anwer of [exercise \#9: No for-loops
\#14](CppExerciseNoForLoops.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  template <class T> struct Square : public std::unary_function<T,T> {   const T operator()(const T& x) const { return x*x; } };  void MakeSquare(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Square<int>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[MakeSquare](CppMakeSquare.htm) using a **[for](CppFor.htm)**-loop
------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\].

 

  -----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void MakeSquare(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=v[i];   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
