



 

 

 

 

 

([C++](Cpp.htm)) [operator||](CppOperatorLogicalOr.htm)
=======================================================

 

[operator||](CppOperatorLogicalOr.htm) (pronounced as 'logical or
operator') is an [operator](CppOperator.htm) to state that at least one
of multiple conditions must be true. In the example below, both the
username 'Bilderbikkel' and 'Parachutemeisje' are correct.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>  int main() {   std::string user_name;   std::cout << "Please enter your username\n";   std::cin >> user_name;    if (user_name == "Bilderbikkel"     || user_name == "Parachutemeisje")   {     std::cout << "Welcome\n";   }   else   {     std::cout << "Access failed\n";   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
