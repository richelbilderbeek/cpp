[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::search\_n](CppSearch_n.htm)
==================================================

 

[Algorithm](CppAlgorithm.htm) to find a repeating sequence in a
[container](CppContainer.htm).

 

Prefer algorithm calls over hand-written loops \[1,2\].

 

 

 

 

 

Example
-------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>   int main() {   const std::string s = "abc***def";   /* const */ int n = 3; //Number of repeats //Note: Must leave out const, don't known why   const char c = '*'; //Character to find     //Assume three Kleene stars can be found   const std::string:: const_iterator i = std::search_n ( s.begin(),s.end(),n,c);   assert( i != s.end() );     //Assume four Kleene stars cannot be found   const std::string::const_iterator j = std::search_n ( s.begin(),s.end(),n+1,c);   assert( j == s.end() ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops'.
2.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
