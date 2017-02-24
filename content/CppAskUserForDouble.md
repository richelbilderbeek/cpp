



 

 

 

 

 

([C++](Cpp.htm)) [AskUserForDouble](CppAskUserForDouble.htm)
============================================================

 

[AskUserForDouble](CppAskUserForDouble.htm) is a
[std::string](CppString.htm) [code snippet](CppCodeSnippets.htm) to ask
the user for a single-line input (which is then converted to
[double](CppDouble.htm)).

 

-   [View the code of 'AskUserForDouble' in plain
    text](CppAskUserForDouble.txt)

 

 

 

 

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  #include <iostream> #include <string> #include <boost/lexical_cast.hpp>  //From http://www.richelbilderbeek.nl/CppAskUserForDouble.htm const double AskUserForDouble() {   while (1)   {     const std::string s = AskUserForString();     if (!IsDouble(s)) continue;     return boost::lexical_cast<double>(s);   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
