[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::clock\_t](CppClock_t.htm)
================================================

 

[std::clock\_t](CppClock_t.htm) is an [STL](CppStl.htm)
[struct](CppStruct.htm) for storing [time](CppTime.htm).

 

[std::clock\_t](CppClock_t.htm) is [defined](CppDefinition.htm) in the
[header file](CppHeaderFile.htm) [ctime.h](CppCtimeH.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream>  int main() {   const std::clock_t begin = std::clock();   for (int i=0; i!=10000000; ++i) std::rand();   const std::clock_t end = std::clock();   const double n_seconds = std::difftime(end,begin) / CLOCKS_PER_SEC;   std::cout << "Elapsed time: " << n_seconds << " seconds\n"; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output (elapsed time might differ):

 

  -------------------------------
  ` Elapsed time: 0.16 seconds`
  -------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
