
 

 

 

 

 

([C++](Cpp.md)) [std::isupper](CppIsupper.md)
===============================================

 

[std::isupper](CppIsupper.md) is an [STL](CppStl.md)
[function](CppFunction.md) to check if a [character](CppChar.md) is an
uppercase alphabetic letter.

 

-   [Download the Qt Creator project 'CppIsupper' (zip)](CppIsupper.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cctype>  int main() {   assert(!std::isupper('a'));   assert(std::isupper('A'));   assert(!std::isupper('1'));   assert(!std::isupper('@')); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

