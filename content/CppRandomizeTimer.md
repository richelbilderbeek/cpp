[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [RandomizeTimer](CppRandomizeTimer.htm)
========================================================

 

[RandomizeTimer](CppRandomizeTimer.htm) is [random
numbers](CppRandomNumber.htm) [code snippet](CppCodeSnippets.htm) to set
a random seed using the computer timer. The function name comes from the
QBasic command 'RANDOMIZE TIMER', which served the same purpose.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime>   //From http://www.richelbilderbeek.nl/CppRandomizeTimer.htm void RandomizeTimer() {   std::srand(std::time(0)); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
