[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [GetSizes](CppGetSizes.htm)
============================================

 

[GetSizes](CppGetSizes.htm) is a [matrix](CppMatrix.htm) [code
snippet](CppCodeSnippets.htm) to obtain all [std::vector](CppVector.htm)
sizes in a (one-dimensional) [std::vector](CppVector.htm).

 

-   [Download the Qt Creator project
    'CppGetSizes' (zip)](CppGetSizes.zip)

 

 

 

 

![C++11](PicCpp11.png)![STL](PicStl.png) [GetSizes](CppGetSizes.htm) using a [C++11](Cpp11.htm) [lambda expression](CppLambdaExpression.htm)
--------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppGetSizes.htm const std::vector<std::size_t> GetSizes(const std::vector<std::vector<double> >& v) {   std::vector<std::size_t> w;   std::transform(v.begin(),v.end(),std::back_inserter(w),     [](const std::vector<double>& x) { return x.size(); }   );   return w; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png) [GetSizes](CppGetSizes.htm) using a [for](CppFor.htm)-loop
---------------------------------------------------------------------------------

 

Prefer [algorithms](CppAlgorithm.htm) over loops \[1\]\[2\]

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  const std::vector<std::size_t> GetSizes(const std::vector<std::vector<double> >& v) {   std::vector<std::size_t> w;    const std::size_t sz = v.size();   for (std::size_t i = 0; i!=sz; ++i)   {     w.push_back(v[i].size());   }   return w; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms over loops'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    84: 'Prefer algorithm calls to handwritten loops'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
