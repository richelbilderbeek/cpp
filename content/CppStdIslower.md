
 

 

 

 

 

([C++](Cpp.md)) [std::islower](CppStdIslower.md)
===============================================

 

[std::islower](CppStdIslower.md) is an [STL](CppStl.md)
[function](CppFunction.md) to check if a [character](CppChar.md) is a
lowercase alphabetic letter.

 

-   [Download the Qt Creator project 'CppIslower' (zip)](CppIslower.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cctype>  int main() {   assert(std::islower('a'));   assert(!std::islower('A'));   assert(!std::islower('1'));   assert(!std::islower('@')); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

