



 

 

 

 

 

([C++](Cpp.htm)) [count](CppCount.htm)
======================================

 

This page is about two different [count](CppCount.htm)s:

-   std::count: a standard algorithm to count elements in a
    one-dimensional container
-   Count: a function to count elements in a two-dimensional container

 

 

 

 

 

[std::count](CppCount.htm)
--------------------------

 

[std::count](CppCount.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) for counting elements in a
[container](CppContainer.htm). For conditional counting use
[std::count\_if](CppCount_if.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(1);   v.push_back(2);   v.push_back(2);   v.push_back(3);   v.push_back(3);   v.push_back(3);    assert(std::count(v.begin(),v.end(),1)==1);   assert(std::count(v.begin(),v.end(),2)==2);   assert(std::count(v.begin(),v.end(),3)==3); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Count](CppCount.htm)
---------------------

 

[Count](CppCount.htm) is a [function](CppFunction.htm) to count elements
in a two-dimensional [container](CppContainer.htm).

 

-   [Download the Qt Creator project 'CppCount' (zip)](CppCount.zip)

 

 

 

 

 

### ![C++11](PicCpp11.png)![STL](PicStl.png) [Count](CppCount.htm) using a [C++11](Cpp11.htm) [lambda expression](CppLambdaExpression.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <numeric> #include <vector>  int Count(const std::vector<std::vector<int> >& v, const int value) {   return std::accumulate(v.begin(),v.end(),0,     [value](int& sum, const std::vector<int>& w)     {       return sum + std::count(w.begin(),w.end(),value);     }   ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### ![C++98](PicCpp98.png) [Count](CppCount.htm) using a [for](CppFor.htm)-loop

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\]

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int Count(const std::vector<std::vector<int> >& v, const int value) {   int cnt = 0;   const std::size_t maxi = v.size();   for (std::size_t i = 0; i!=maxi; ++i)   {     const std::vector<int>& w = v[i];     const std::size_t maxj = w.size();     for (std::size_t j = 0; j!=maxj; ++j)     {       if (w[j] == value) ++cnt;     }   }   return cnt; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 





 



