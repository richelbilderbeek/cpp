



 

 

 

 

 

([C++](Cpp.md)) [GetSizes](CppGetSizes.md)
============================================

 

[GetSizes](CppGetSizes.md) is a [matrix](CppMatrix.md) [code
snippet](CppCodeSnippets.md) to obtain all [std::vector](CppVector.md)
sizes in a (one-dimensional) [std::vector](CppVector.md).

 

-   [Download the Qt Creator project
    'CppGetSizes' (zip)](CppGetSizes.zip)

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [GetSizes](CppGetSizes.md) using a [C++11](Cpp11.md) [lambda expression](CppLambdaExpression.md)
--------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSizes.htm const std::vector<std::size_t> GetSizes(const std::vector<std::vector<double> >& v) {   std::vector<std::size_t> w;   std::transform(v.begin(),v.end(),std::back_inserter(w),     [](const std::vector<double>& x) { return x.size(); }   );   return w; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [GetSizes](CppGetSizes.md) using a [for](CppFor.md)-loop
---------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.md) over loops \[1\]\[2\]

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  const std::vector<std::size_t> GetSizes(const std::vector<std::vector<double> >& v) {   std::vector<std::size_t> w;    const std::size_t sz = v.size();   for (std::size_t i = 0; i!=sz; ++i)   {     w.push_back(v[i].size());   }   return w; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 





 



