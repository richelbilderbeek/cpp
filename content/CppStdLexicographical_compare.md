

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::lexicographical\_compare](CppLexicographical_compare.htm)
================================================================================

 

[std::lexicographical\_compare](CppLexicographical_compare.htm) is an
[STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to determine if two
sequences of [characters](CppChar.htm) are in an alphabetically sorted
order. Note that [std::strings](CppString.htm) are compared this way by
default.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>  int main() {   const std::string s1 = "Bilderbikkel";   const std::string s2 = "Parachutemeisje";    //Assume Bilderbikkel comes before Parachutemeisje   //with std::lexicographical_compare   assert(std::lexicographical_compare(     s1.begin(),s1.end(),s2.begin(),s2.end()) == true);    //Assume Bilderbikkel comes before Parachutemeisje   //with default std::string behavior   assert(s1 < s2); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
