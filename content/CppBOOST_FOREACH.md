



 

 

 

 

 

([C++](Cpp.md)) [BOOST\_FOREACH](CppBOOST_FOREACH.md)
=======================================================

 

[BOOST\_FOREACH](CppBOOST_FOREACH.md) is a [Boost](CppBoost.md)
[macro](CppMacro.md) to replace [for](CppFor.md)-loops or to simplify
their corresponding [algorithm](CppAlgorithm.md).

 

Examples
--------

 

-   [BOOST\_FOREACH Example 1](CppBOOST_FOREACHExample1.md)

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/foreach.hpp>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   BOOST_FOREACH(typename Container::value_type& i, c)   {     i*=3;   } }  #include <vector> #include <cassert>  int main() {   std::vector<int> v;   v.push_back(1);   Triple(v);   assert(v[0]==3); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



