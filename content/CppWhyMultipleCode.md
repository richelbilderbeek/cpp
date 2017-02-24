
 

 

 

 

 

([C++](Cpp.md)) [Why do you put multiple versions of the same code on your site?](CppWhyMultipleCode.md)
==========================================================================================================

 

[FAQ](CppFaq.md).

 

Because I want to give both the general or 'best' solution, as well as
the solution best readable for beginners. I always state which solution
is recommended in most situations.

 

For example, the function [Triple](CppTriple.md) has the following
general or 'best' solution:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   std::transform(c.begin(),c.end(),c.begin(),     std::bind2nd(std::multiplies<Container::value_type>(),3)); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

For a beginner this solution is hard to contain. Therefore, I also give
the solution best readable for beginners below:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  //From http://www.richelbilderbeek.nl/CppTriple.htm void Triple(std::vector<int>& v) {   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     v[i]*=3;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

