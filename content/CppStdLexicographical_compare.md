
 

 

 

 

 

([C++](Cpp.md)) [std::lexicographical\_compare](CppLexicographical_compare.md)
================================================================================

 

[std::lexicographical\_compare](CppLexicographical_compare.md) is an
[STL](CppStl.md) [algorithm](CppAlgorithm.md) to determine if two
sequences of [characters](CppChar.md) are in an alphabetically sorted
order. Note that [std::strings](CppString.md) are compared this way by
default.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>  int main() {   const std::string s1 = "Bilderbikkel";   const std::string s2 = "Parachutemeisje";    //Assume Bilderbikkel comes before Parachutemeisje   //with std::lexicographical_compare   assert(std::lexicographical_compare(     s1.begin(),s1.end(),s2.begin(),s2.end()) == true);    //Assume Bilderbikkel comes before Parachutemeisje   //with default std::string behavior   assert(s1 < s2); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

