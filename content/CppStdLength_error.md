
 

 

 

 

 

([C++](Cpp.md)) [std::length\_error](CppLength_error.md)
==========================================================

 

[std::length\_error](CppLength_error.md) (a [derived
class](CppDerivedClass.md) from
[std::runtime\_error](CppRuntime_error.md)) is [thrown](CppThrow.md)
when a too big [std::string](CppString.md) is created.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <stdexcept> #include <string>  int main() {   std::string s;   try   {     s.resize(s.max_size()+1);   }   catch (std::length_error& e)   {     std::cout << e.what();   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

