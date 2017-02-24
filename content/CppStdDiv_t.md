

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::div\_t](CppDiv_t.htm)
============================================

 

[std::div\_t](CppDiv.htm) is an [STL](CppStl.htm) [class](CppClass.htm)
[returned](CppReturn.htm) by [std::div](CppDiv.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  int main() {   const std::div_t d = std::div(7,3);   //Assume the quotient equals (7 / 3) == 2   assert(d.quot == 2);   //Assume the remainder equals (7 % 3) == 1   assert(d.rem  == 1); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
