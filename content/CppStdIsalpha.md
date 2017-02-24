



 

 

 

 

 

([C++](Cpp.htm)) [std::isalpha](CppIsalpha.htm)
===============================================

 

[std::isalpha](CppIsalpha.htm) is a [function](CppFunction.htm) to test
if the given character is in the locale's alphabet.

 

-   [Download the Qt Creator Project 'CppIsalpha' (zip)](CppIsalpha.htm)

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cctype>  int main () {   assert( std::isalpha('a'));   assert( std::isalpha('z'));   assert( std::isalpha('A'));   assert( std::isalpha('Z'));   assert(!std::isalpha(' '));   assert(!std::isalpha('\n'));   assert(!std::isalpha('\t')); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
