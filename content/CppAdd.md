

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Add](CppAdd.htm)
==================================

 

[Add](CppAdd.htm) is a [math](CppMath.htm) [code
snippet](CppCodeSnippets.htm) to add a certain same value to each
element in a [std::vector](CppVector.htm).

 

There are multiple ways to perform [Add](CppAdd.htm):

1.  ![C++11](PicCpp11.png)![STL](PicStl.png) The [C++11](Cpp11.htm)
    [algorithm](CppAlgorithm.htm) way on a
    [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
2.  ![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.htm)
    [algorithm](CppAlgorithm.htm) way on a
    [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
3.  ![C++98](PicCpp98.png) The for-loop way on a
    [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;

 

-   [Download the Qt Creator project 'CppAdd' (zip)](CppAdd.zip)

 

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) The [C++11](Cpp11.htm) [algorithm](CppAlgorithm.htm) way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\]

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppAdd.htm const std::vector<int> AddCpp0x(const std::vector<int>& v, const int x) {   std::vector<int> w(v);   std::for_each(w.begin(),w.end(),[x](int&i) { i+=x; } );   return w; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![STL](PicStl.png) The [C++98](Cpp98.htm) [algorithm](CppAlgorithm.htm) way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\]

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <functional> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppAdd.htm  const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new;   std::transform(v.begin(),v.end(),std::back_inserter(v_new),     std::bind2nd(std::plus<int>(),x));   return v_new; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This is the answer of [Exercise \#9: No
for-loops](CppExerciseNoForLoops.htm).

 

 

 

 

 

![C++98](PicCpp98.png) The for-loop way on a [std::vector](CppVector.htm)&lt;[int](CppInt.htm)&gt;
--------------------------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\]

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  const std::vector<int> Add(const std::vector<int>& v, const int x) {   std::vector<int> v_new(v); //Copy original vector   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v_new[i]+=x;   }   return v_new; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

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
