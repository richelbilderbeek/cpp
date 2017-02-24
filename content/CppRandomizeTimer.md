



 

 

 

 

 

([C++](Cpp.htm)) [RandomizeTimer](CppRandomizeTimer.htm)
========================================================

 

[RandomizeTimer](CppRandomizeTimer.htm) is [random
numbers](CppRandomNumber.htm) [code snippet](CppCodeSnippets.htm) to set
a random seed using the computer timer. The function name comes from the
QBasic command 'RANDOMIZE TIMER', which served the same purpose.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime>   //From http://www.richelbilderbeek.nl/CppRandomizeTimer.htm void RandomizeTimer() {   std::srand(std::time(0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



