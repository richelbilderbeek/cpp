



 

 

 

 

 

([C++](Cpp.htm)) [std::isxdigit](CppIsxdigit.htm)
=================================================

 

[std::isxdigit](CppIsxdigit.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to test of a character is a hexadecimal
digit.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string>  int main() {   const std::string s = "1a";    //'a' is no decimal digit   assert( std::isdigit(s[0]));   assert(!std::isdigit(s[1]));    //'a' is a hexadecimal digit   assert( std::isxdigit(s[0]));   assert( std::isxdigit(s[1])); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
