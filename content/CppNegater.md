



 

 

 

 

 

([C++](Cpp.htm)) [Negater](CppNegater.htm)
==========================================

 

A [negater](CppNegater.htm) is a type of [functor](CppFunctor.htm) that
allows to express the opposite of a [predicate](CppPredicate.htm) \[1\].

 

[Negaters](CppNegater.htm) are useful when using
[algorithms](CppAlgorithm.htm).

 

 

 

 

 

![Boost](PicBoost.png) Example (using [Boost](CppBoost.htm).Bind)
-----------------------------------------------------------------

 

The example below demonstrates how to a find a not-male (that is, a
female) using the [std::not1](CppNot1.htm) [negater](CppNegater.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector> #include <boost/bind.hpp>  struct Person {   Person(const bool is_male) : m_is_male(is_male) {}   bool IsMale() const { return m_is_male; }   const bool m_is_male; };  bool HasFemale(const std::vector<const Person *>& v) {   return std::find_if(     v.begin(),v.end(),     std::not1(boost::mem_fn(&Person::IsMale))     ) != v.end(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.4.4: 'A
    negater allows us to express the opposite of a predicate'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
