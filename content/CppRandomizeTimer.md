



 

 

 

 

 

([C++](Cpp.htm)) [RandomizeTimer](CppRandomizeTimer.htm)
========================================================

 

[RandomizeTimer](CppRandomizeTimer.htm) is [random
numbers](CppRandomNumber.htm) [code snippet](CppCodeSnippets.htm) to set
a random seed using the computer timer. The function name comes from the
QBasic command 'RANDOMIZE TIMER', which served the same purpose.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime>   //From http://www.richelbilderbeek.nl/CppRandomizeTimer.htm void RandomizeTimer() {   std::srand(std::time(0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
