



 

 

 

 

 

([C++](Cpp.htm)) ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [Multiply](CppMultiply.htm)
=========================================================================================

 

[Multiply](CppMultiply.htm) is a [math](CppMath.htm) [code
snippet](CppCodeSnippets.htm) to multiply each element in a
[std::vector](CppVector.htm) by a certain value.

 

[Multiply](CppMultiply.htm) can be [defined](CppDefinition.htm) in
multiple ways:

1.  ![C++11](PicCpp11.png)![STL](PicStl.png) [Multiply](CppMultiply.htm)
    using an [algorithm](CppAlgorithm.htm) and the [C++11](Cpp11.htm)
    [STL](CppStl.htm)
2.  ![C++98](PicCpp98.png)![STL](PicStl.png) Using an
    [algorithm](CppAlgorithm.htm) and the [STL](CppStl.htm)
3.  ![C++98](PicCpp98.png)![Boost](PicBoost.png) Using an
    [algorithm](CppAlgorithm.htm) and [Boost](CppBoost.htm)
4.  ![C++98](PicCpp98.png) Using a [for](CppFor.htm) loop

 

-   [Download the Qt Creator project
    'CppMultiply' (zip)](CppMultiply.zip)

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\].

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [Multiply](CppMultiply.htm) using an [algorithm](CppAlgorithm.htm) and the [C++11](Cpp11.htm) [STL](CppStl.htm)
--------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  void Multiply(std::vector<int>& v, const int x) {   std::for_each(v.begin(),v.end(),     [x](int& i) { i*=x; } ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) [Multiply](CppMultiply.htm) using an [algorithm](CppAlgorithm.htm) and the [STL](CppStl.htm)
-------------------------------------------------------------------------------------------------------------------------------------

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector>   void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind2nd(std::multiplies<int>(),x)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [Multiply](CppMultiply.htm) using an [algorithm](CppAlgorithm.htm) and [Boost](CppBoost.htm)
-----------------------------------------------------------------------------------------------------------------------------------------

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector> #include <boost/bind.hpp>   void Multiply(std::vector<int>& v, const int x) {   std::transform(v.begin(),v.end(),v.begin(),     boost::bind(std::multiplies<int>(),_1,x)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [Multiply](CppMultiply.htm) using a [for](CppFor.htm) loop
---------------------------------------------------------------------------------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>   void Multiply(std::vector<int>& v, const int x) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=x;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 





 



