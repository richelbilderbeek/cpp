



 

 

 

 

 

([C++](Cpp.md)) [std::clock](CppClock.md)
===========================================

 

[std::clock](CppClock.md) is an [STL](CppStl.md) [time](CppTime.htm)
[function](CppFunction.md) to obtain the number of ticks the program
has been running.

 

[std::clock](CppClock.md) is [defined](CppDefinition.md) in the
[header file](CppHeaderFile.md) [ctime.h](CppCtimeH.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream>  int main() {   const std::clock_t begin = std::clock();   for (int i=0; i!=10000000; ++i) std::rand();   const std::clock_t end = std::clock();   const double n_seconds = std::difftime(end,begin) / CLOCKS_PER_SEC;   std::cout << "Elapsed time: " << n_seconds << " seconds\n"; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output (elapsed time might differ):

 

  -------------------------------
  ` Elapsed time: 0.16 seconds`
  -------------------------------

 

 

 

 

 





 



