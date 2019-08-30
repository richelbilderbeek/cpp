# ([C++](Cpp.md)) [AddTwo](CppAddTwo.md)

[Math](CppMath.md) [code snippet](CppCodeSnippets.md) to add two to
all elements in a [container](CppContainer.md).

There are multiple ways to implement [AddTwo](CppAddTwo.md):

1.  ![C++98](PicCpp98.png)![STL](PicStl.png) Using a [C++98](Cpp98.md)
    [algorithm](CppAlgorithm.md)
2.  ![C++11](PicCpp11.png)![STL](PicStl.png) Using a [C++11](Cpp11.md)
    [lambda expressions](CppLambdaExpression.md)
3.  ![C++98](PicCpp98.png) Using a for-loop

-   [Download the Qt Creator project 'CppAddTwo' (zip)](CppAddTwo.zip)

## ![C++98](PicCpp98.png)![STL](PicStl.png) [AddTwo](CppAddTwo.md) using an [algorithm](CppAlgorithm.md)

This is the anwer of [exercise \#9: No for-loops
\#1](CppExerciseNoForLoops.md).

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <algorithm> #include <numeric>  const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> v_new;   std::transform(v.begin(),v.end(),std::back_inserter(v_new),     std::bind2nd(std::plus<int>(),2));   return v_new; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## ![C++11](PicCpp11.png)![STL](PicStl.png) Using a [C++11](Cpp11.md) [lambda expressions](CppLambdaExpression.md)

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppAddTwo.htm const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> w(v);   std::for_each(w.begin(),w.end(), [](int& i) { i+=2; } );   return w; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## ![C++98](PicCpp98.png) [AddTwo](CppAddTwo.md) using a **[for](CppFor.md)**-loop

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\].

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   const std::vector<int> AddTwo(const std::vector<int>& v) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=2;   }   return v_new; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The [C++](Cpp.md)
    Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter
    18.12.1 : 'Prefer algorithms over loops'
 * [2] [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). [C++](Cpp.md) coding
    standards: 101 rules, guidelines, and best practices.
    ISBN: 0-32-111358-6. Chapter 84: 'Prefer algorithm calls to
    handwritten loops.'
