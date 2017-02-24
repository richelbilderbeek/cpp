



 

 

 

 

 

([C++](Cpp.htm)) [Boost.Lambda](CppBoostLambda.htm)
===================================================

 

[Boost.Lambda](CppBoostLambda.htm) is a [Boost](CppBoost.htm)
[library](CppLibrary.htm) to allow for [lambda
expressions](CppLambdaExpression.htm) to replace [for](CppFor.htm)-loops
or to simplify their corresponding [algorithm](CppAlgorithm.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <boost/lambda/lambda.hpp>   //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   std::for_each(c.begin(),c.end(),boost::lambda::_1*=3); }  #include <vector> #include <cassert>  int main() {   std::vector<int> v;   v.push_back(1);   Triple(v);   assert(v[0]==3); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
