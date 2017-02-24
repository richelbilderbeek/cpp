



 

 

 

 

 

([C++](Cpp.htm)) [BOOST\_FOREACH](CppBOOST_FOREACH.htm)
=======================================================

 

[BOOST\_FOREACH](CppBOOST_FOREACH.htm) is a [Boost](CppBoost.htm)
[macro](CppMacro.htm) to replace [for](CppFor.htm)-loops or to simplify
their corresponding [algorithm](CppAlgorithm.htm).

 

Examples
--------

 

-   [BOOST\_FOREACH Example 1](CppBOOST_FOREACHExample1.htm)

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/foreach.hpp>  //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   BOOST_FOREACH(typename Container::value_type& i, c)   {     i*=3;   } }  #include <vector> #include <cassert>  int main() {   std::vector<int> v;   v.push_back(1);   Triple(v);   assert(v[0]==3); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
