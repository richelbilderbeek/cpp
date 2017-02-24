
 

 

 

 

 

([C++](Cpp.md)) [std::difftime](CppDifftime.md)
=================================================

 

[std::difftime](CppDifftime.md) is an [STL](CppStl.md)
[function](CppFunction.md) to obtain the time difference in ticks
between two [std::clock\_t](CppClock_t.md) [structures](CppStruct.md).

 

[std::difftime](CppDifftime.md) is [defined](CppDefinition.md) in the
[header file](CppHeaderFile.md) [ctime.h](CppCtimeH.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <ctime> #include <iostream>  int main() {   const std::clock_t begin = std::clock();   for (int i=0; i!=10000000; ++i) std::rand();   const std::clock_t end = std::clock();   const double n_seconds = std::difftime(end,begin) / CLOCKS_PER_SEC;   std::cout << "Elapsed time: " << n_seconds << " seconds\n"; }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output (elapsed time might differ):

 

  -------------------------------
  ` Elapsed time: 0.16 seconds`
  -------------------------------

 

 

 

 

 

 

