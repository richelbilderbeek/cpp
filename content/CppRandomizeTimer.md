
 

 

 

 

 

([C++](Cpp.md)) [RandomizeTimer](CppStdRandomdomizeTimer.md)
========================================================

 

[RandomizeTimer](CppStdRandomdomizeTimer.md) is [random
numbers](CppStdRandomdomNumber.md) [code snippet](CppCodeSnippets.md) to set
a random seed using the computer timer. The function name comes from the
QBasic command 'RANDOMIZE TIMER', which served the same purpose.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime>   //From http://www.richelbilderbeek.nl/CppStdRand.mdomizeTimer.htm void RandomizeTimer() {   std::srand(std::time(0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

