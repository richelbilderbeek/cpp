



 

 

 

 

 

([C++](Cpp.md)) ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [Multiply](CppMultiply.md)
=========================================================================================

 

[Multiply](CppMultiply.md) is a [math](CppMath.md) [code
snippet](CppCodeSnippets.md) to multiply each element in a
[std::vector](CppVector.md) by a certain value.

 

[Multiply](CppMultiply.md) can be [defined](CppDefinition.md) in
multiple ways:

1.  ![C++11](PicCpp11.png)![STL](PicStl.png) [Multiply](CppMultiply.md)
    using an [algorithm](CppAlgorithm.md) and the [C++11](Cpp11.md)
    [STL](CppStl.md)
2.  ![C++98](PicCpp98.png)![STL](PicStl.png) Using an
    [algorithm](CppAlgorithm.md) and the [STL](CppStl.md)
3.  ![C++98](PicCpp98.png)![Boost](PicBoost.png) Using an
    [algorithm](CppAlgorithm.md) and [Boost](CppBoost.md)
4.  ![C++98](PicCpp98.png) Using a [for](CppFor.md) loop

 

-   [Download the Qt Creator project
    'CppMultiply' (zip)](CppMultiply.zip)

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\].

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [Multiply](CppMultiply.md) using an [algorithm](CppAlgorithm.md) and the [C++11](Cpp11.htm) [STL](CppStl.htm)
--------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  void Multiply(std::vector<int>& v, const int x) {   std::for_each(v.begin(),v.end(),     [x](int& i) { i*=x; } ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) [Multiply](CppMultiply.md) using an [algorithm](CppAlgorithm.md) and the [STL](CppStl.htm)
-------------------------------------------------------------------------------------------------------------------------------------

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector>   void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),x)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [Multiply](CppMultiply.md) using an [algorithm](CppAlgorithm.md) and [Boost](CppBoost.htm)
-----------------------------------------------------------------------------------------------------------------------------------------

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector> #include <boost/bind.hpp>   void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     boost::bind(std::multiplies<int>(),_1,x)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [Multiply](CppMultiply.md) using a [for](CppFor.md) loop
---------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Multiply(std::vector<int>& v, const int x) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=x;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 





 



