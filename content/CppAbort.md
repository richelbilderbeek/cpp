



 

 

 

 

 

([C++](Cpp.md)) [std::abort](CppAbort.md)
===========================================

 

[std::abort](CppAbort.md) is an [STL](CppStl.md)
[function](CppFunction.md) to abort the program from any point.

 

In the example below, [std::signal](CppStdSignal.md) sets the function
onAbort to handle a possible abort. Then [std::abort](CppAbort.md) is
called and handled by onAbort.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <csignal> #include <iostream>  void onAbort(int) {   std::cout << "Abort" << std::endl; }  int main() {   std::signal(SIGABRT,onAbort);   std::abort(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



