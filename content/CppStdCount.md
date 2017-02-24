
 

 

 

 

 

([C++](Cpp.md)) [count](CppCount.md)
======================================

 

This page is about two different [count](CppCount.md)s:

-   std::count: a standard algorithm to count elements in a
    one-dimensional container
-   Count: a function to count elements in a two-dimensional container

 

 

 

 

 

[std::count](CppCount.md)
--------------------------

 

[std::count](CppCount.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) for counting elements in a
[container](CppContainer.md). For conditional counting use
[std::count\_if](CppCount_if.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(1);   v.push_back(2);   v.push_back(2);   v.push_back(3);   v.push_back(3);   v.push_back(3);    assert(std::count(v.begin(),v.end(),1)==1);   assert(std::count(v.begin(),v.end(),2)==2);   assert(std::count(v.begin(),v.end(),3)==3); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Count](CppCount.md)
---------------------

 

[Count](CppCount.md) is a [function](CppFunction.md) to count elements
in a two-dimensional [container](CppContainer.md).

 

-   [Download the Qt Creator project 'CppCount' (zip)](CppCount.zip)

 

 

 

 

 

### ![C++11](PicCpp11.png)![STL](PicStl.png) [Count](CppCount.md) using a [C++11](Cpp11.md) [lambda expression](CppLambdaExpression.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <numeric> #include <vector>  int Count(const std::vector<std::vector<int> >& v, const int value) {   return std::accumulate(v.begin(),v.end(),0,     [value](int& sum, const std::vector<int>& w)     {       return sum + std::count(w.begin(),w.end(),value);     }   ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

### ![C++98](PicCpp98.png) [Count](CppCount.md) using a [for](CppFor.md)-loop

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\]

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <vector>  int Count(const std::vector<std::vector<int> >& v, const int value) {   int cnt = 0;   const std::size_t maxi = v.size();   for (std::size_t i = 0; i!=maxi; ++i)   {     const std::vector<int>& w = v[i];     const std::size_t maxj = w.size();     for (std::size_t j = 0; j!=maxj; ++j)     {       if (w[j] == value) ++cnt;     }   }   return cnt; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 

 

