



 

 

 

 

 

([C++](Cpp.md)) [AskUserForDouble](CppAskUserForDouble.md)
============================================================

 

[AskUserForDouble](CppAskUserForDouble.md) is a
[std::string](CppString.md) [code snippet](CppCodeSnippets.md) to ask
the user for a single-line input (which is then converted to
[double](CppDouble.md)).

 

-   [View the code of 'AskUserForDouble' in plain
    text](CppAskUserForDouble.txt)

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <iostream> #include <string> #include <boost/lexical_cast.hpp>  //From http://www.richelbilderbeek.nl/CppAskUserForDouble.htm const double AskUserForDouble() {   while (1)   {     const std::string s = AskUserForString();     if (!IsDouble(s)) continue;     return boost::lexical_cast<double>(s);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



