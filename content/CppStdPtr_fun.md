



 

 

 

 

 

([C++](Cpp.htm)) [std::ptr\_fun](CppPtr_fun.htm)
================================================

 

An [adapter](CppAdapter.htm) to be able to use the
[algorithm](CppAlgorithm.htm) [for\_each](CppFor_each.htm) on a
[function](CppFunction.htm) of T stored in a
[container](CppContainer.htm) as T, instead of using loops. Prefer
[algorithm](CppAlgorithm.htm) calls over hand-written loops \[1,2\].

 

 

 

 

 

Example
-------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cctype> #include <string>   //From http://www.richelbilderbeek.nl/CppStrToUpper.htm const std::string StrToUpper (std::string s) {   std::transform(s.begin(), s.end(), s.begin(),std::ptr_fun(std::toupper));   return s; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops'
2.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN:0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'

 

 

 

 

 





 



