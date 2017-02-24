



 

 

 

 

 

([C++](Cpp.md)) [std::find\_first\_of](CppFind_first_of.md)
=============================================================

 

[std::find\_first\_of](CppFind_first_of.md) is an STL algorithm similar
to std::find, except that it finds a value from a collection of values.

 

-   [Download the Qt Creator project
    'CppFind\_first\_of' (zip)](CppFind_first_of.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>  int main() {   const std::string vowels = "aeiouAEIOU";   const std::string s = "Bilderbikkel";   const std::string::const_iterator i     = std::find_first_of(s.begin(),s.end(),vowels.begin(),vowels.end());   assert(*i == 'i' && "The first vowel in \'Bilderbikkel\' is an \'i\'"); } `
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



