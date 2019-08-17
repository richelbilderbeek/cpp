# ([C++](Cpp.md)) [Boost.Lambda](CppBoostLambda.md)

[Boost.Lambda](CppBoostLambda.md) is a [Boost](CppBoost.md)
[library](CppLibrary.md) to allow for [lambda
expressions](CppLambdaExpression.md) to replace [for](CppFor.md)-loops
or to simplify their corresponding [algorithm](CppAlgorithm.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <boost/lambda/lambda.hpp>   //From http://www.richelbilderbeek.nl/CppTriple.htm template <class Container> void Triple(Container& c) {   std::for_each(c.begin(),c.end(),boost::lambda::_1*=3); }  #include <vector> #include <cassert>  int main() {   std::vector<int> v;   v.push_back(1);   Triple(v);   assert(v[0]==3); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

