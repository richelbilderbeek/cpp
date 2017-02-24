



 

 

 

 

 

([C++](Cpp.md)) [operator||](CppOperatorLogicalOr.md)
=======================================================

 

[operator||](CppOperatorLogicalOr.md) (pronounced as 'logical or
operator') is an [operator](CppOperator.md) to state that at least one
of multiple conditions must be true. In the example below, both the
username 'Bilderbikkel' and 'Parachutemeisje' are correct.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  int main() {   std::string user_name;   std::cout << "Please enter your username\n";   std::cin >> user_name;    if (user_name == "Bilderbikkel"     || user_name == "Parachutemeisje")   {     std::cout << "Welcome\n";   }   else   {     std::cout << "Access failed\n";   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



