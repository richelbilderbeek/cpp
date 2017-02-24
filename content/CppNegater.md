



 

 

 

 

 

([C++](Cpp.md)) [Negater](CppNegater.md)
==========================================

 

A [negater](CppNegater.md) is a type of [functor](CppFunctor.md) that
allows to express the opposite of a [predicate](CppPredicate.md) \[1\].

 

[Negaters](CppNegater.md) are useful when using
[algorithms](CppAlgorithm.md).

 

 

 

 

 

![Boost](PicBoost.png) Example (using [Boost](CppBoost.md).Bind)
-----------------------------------------------------------------

 

The example below demonstrates how to a find a not-male (that is, a
female) using the [std::not1](CppNot1.md) [negater](CppNegater.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector> #include <boost/bind.hpp>  struct Person {   Person(const bool is_male) : m_is_male(is_male) {}   bool IsMale() const { return m_is_male; }   const bool m_is_male; };  bool HasFemale(const std::vector<const Person *>& v) {   return std::find_if(     v.begin(),v.end(),     std::not1(boost::mem_fn(&Person::IsMale))     ) != v.end(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.4.4: 'A
    negater allows us to express the opposite of a predicate'

 

 

 

 

 





 



