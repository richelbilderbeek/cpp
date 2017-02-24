

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [case](CppCase.htm)
====================================

 

[case](CppCase.htm) is a [keyword](CppKeyword.htm) to state which values
to [switch](CppSwitch.htm) on. If there is no named value to
[switch](CppSwitch.htm) on, [default](CppDefault.htm) can be used
optionally.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>   int main() {   const int coin = std::rand() % 2;   switch (coin)   {     case 0: std::cout << "Heads" << std::endl; break;     case 1: std::cout << "Tail" << std::endl; break;     default: assert(!"Should not get here");   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
