



 

 

 

 

 

([C++](Cpp.htm)) [AskUserForString](CppAskUserForString.htm)
============================================================

 

[AskUserForString](CppAskUserForString.htm) is a [user
I/O](CppUserIo.htm) [std::string](CppString.htm) [code
snippet](CppCodeSnippets.htm) to ask the user for a single-line input,
which is then converted to [std::string](CppString.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>   //From http://www.richelbilderbeek.nl/CppAskUserForString.htm const std::string AskUserForString() {   std::string s;   std::getline(std::cin,s);   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



