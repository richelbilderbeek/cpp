



 

 

 

 

 

([C++](Cpp.md)) [Add](CppAdd.md)
==================================

 

[Add](CppAdd.md) is a [math](CppMath.md) [code
snippet](CppCodeSnippets.md) to add a certain same value to each
element in a [std::vector](CppVector.md).

 

There are multiple ways to perform [Add](CppAdd.md):

1.  ![C++11](PicCpp11.png)![STL](PicStl.png) The [C++11](Cpp11.md)
    [algorithm](CppAlgorithm.md) way on a
    [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
2.  ![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.md)
    [algorithm](CppAlgorithm.md) way on a
    [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
3.  ![C++98](PicCpp98.png) The for-loop way on a
    [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;

 

-   [Download the Qt Creator project 'CppAdd' (zip)](CppAdd.zip)

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) The [C++11](Cpp11.md) [algorithm](CppAlgorithm.md) way on a [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\]

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppAdd.htm const std::vector<int> AddCpp0x(const std::vector<int>& v, const int x) {   std::vector<int> w(v);   std::for_each(w.begin(),w.end(),[x](int&i) { i+=x; } );   return w; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.md) [algorithm](CppAlgorithm.md) way on a [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\]

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppAdd.htm  const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new;   std::transform(v.begin(),v.end(),std::back_inserter(v_new),     std::bind2nd(std::plus<int>(),x));   return v_new; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.md).

 

 

 

 

 

![C++98](PicCpp98.png) The for-loop way on a [std::vector](CppVector.md)&lt;[int](CppInt.md)&gt;
--------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\]

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=x;   }   return v_new; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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

 

 

 

 

 





 



