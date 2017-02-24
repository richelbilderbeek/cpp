



 

 

 

 

 

([C++](Cpp.htm)) [default](CppDefault.htm)
==========================================

 

[default](CppDefault.htm) is a [keyword](CppKeyword.htm) used in a
[switch](CppSwitch.htm) statement. If there is no [case](CppCase.htm) to
[switch](CppSwitch.htm) on, [default](CppDefault.htm) can be used
optionally for non-[case](CppCase.htm) values.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>   int main() {   const int dice = 1 + (std::rand() % 6);    switch (dice)   {     case 1: std::cout << "One\n"; break;     case 2: std::cout << "Two\n"; break;     case 3: std::cout << "Three\n"; break;     case 4: std::cout << "Four\n"; break;     case 5: std::cout << "Five\n"; break;     case 6: std::cout << "Six\n"; break;     default: assert(!"Should not get here");   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
