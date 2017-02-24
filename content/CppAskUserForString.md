
 

 

 

 

 

([C++](Cpp.md)) [AskUserForString](CppAskUserForString.md)
============================================================

 

[AskUserForString](CppAskUserForString.md) is a [user
I/O](CppUserIo.md) [std::string](CppString.md) [code
snippet](CppCodeSnippets.md) to ask the user for a single-line input,
which is then converted to [std::string](CppString.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <string>   //From http://www.richelbilderbeek.nl/CppAskUserForString.htm const std::string AskUserForString() {   std::string s;   std::getline(std::cin,s);   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

