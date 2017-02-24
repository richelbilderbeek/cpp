



 

 

 

 

 

([C++](Cpp.md)) [operator&&](CppOperatorLogicalAnd.md)
========================================================

 

[operator&&](CppOperatorLogicalAnd.md) (pronounced as 'logical and
operator') is an [operator](CppOperator.md) to state that two
conditions must be true. In the example below, both a username and
password must be correct.

 

-   [Download the Qt Creator project
    'CppOperatorLogicalAnd' (zip)](CppOperatorLogicalAnd.zip)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  int main() {   std::string user_name;   std::cout << "Please enter your username\n";   std::cin >> user_name;    std::string password;   std::cout << "Please enter your password\n";   std::cin >> password;    if (user_name == "Bilderbikkel"     && password == "MyPassword")   {     std::cout << "Welcome Bilderbikkel\n";   }   else   {     std::cout << "Access failed\n";   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



