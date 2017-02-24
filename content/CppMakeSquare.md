
 

 

 

 

 

([C++](Cpp.md)) [MakeSquare](CppMakeSquare.md)
================================================

 

[Math](CppMath.md) [code snippet](CppCodeSnippets.md) to square all
elements in a [container](CppContainer.md) (that is: to multiply each
element with itself).

 

There are multiple ways to implement [MakeSquare](CppMakeSquare.md):

1.  Using an [algorithm](CppAlgorithm.md) (preferred \[1\]\[2\])
2.  Using a for-loop

 

 

 

 

 

[MakeSquare](CppMakeSquare.md) using an [algorithm](CppAlgorithm.md)
----------------------------------------------------------------------

 

This is the anwer of [exercise \#9: No for-loops
\#14](CppExerciseNoForLoops.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <vector>  template <class T> struct Square : public std::unary_function<T,T> {   const T operator()(const T& x) const { return x*x; } };  void MakeSquare(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Square<int>()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[MakeSquare](CppMakeSquare.md) using a **[for](CppFor.md)**-loop
------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\].

 

  -----------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  void MakeSquare(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=v[i];   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 

 

