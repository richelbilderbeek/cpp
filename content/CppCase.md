
 

 

 

 

 

([C++](Cpp.md)) [case](CppCase.md)
====================================

 

[case](CppCase.md) is a [keyword](CppKeyword.md) to state which values
to [switch](CppSwitch.md) on. If there is no named value to
[switch](CppSwitch.md) on, [default](CppDefault.md) can be used
optionally.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <iostream>   int main() {   const int coin = std::rand() % 2;   switch (coin)   {     case 0: std::cout << "Heads" << std::endl; break;     case 1: std::cout << "Tail" << std::endl; break;     default: assert(!"Should not get here");   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

