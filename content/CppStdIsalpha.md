
 

 

 

 

 

([C++](Cpp.md)) [std::isalpha](CppIsalpha.md)
===============================================

 

[std::isalpha](CppIsalpha.md) is a [function](CppFunction.md) to test
if the given character is in the locale's alphabet.

 

-   [Download the Qt Creator Project 'CppIsalpha' (zip)](CppIsalpha.md)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cctype>  int main () {   assert( std::isalpha('a'));   assert( std::isalpha('z'));   assert( std::isalpha('A'));   assert( std::isalpha('Z'));   assert(!std::isalpha(' '));   assert(!std::isalpha('\n'));   assert(!std::isalpha('\t')); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

