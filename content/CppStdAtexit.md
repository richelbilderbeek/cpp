



 

 

 

 

 

([C++](Cpp.htm)) [std::atexit](CppAtexit.htm)
=============================================

 

[std::atexit](CppAtexit.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to specify which
[functions](CppFunction.htm) must be called upon program termination (in
a [LIFO](http://en.wikipedia.org/wiki/LIFO_%28computing%29) fashion).

 

[std::atexit](CppAtexit.htm) is [defined](CppDefinition.htm) in
[cstdlib.h](CppCstdlibH.htm).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <iostream>  void MyExit1() {   std::cout << "Exit 1\n"; }  void MyExit2() {   std::cout << "Exit 2\n"; }  int main() {   std::atexit(MyExit1);   std::atexit(MyExit2); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------------------------------------------
  ` Starting MyFolder/MyMain Exit 2 Exit 1 /MyFolder/MyMain exited with code 0`
  -------------------------------------------------------------------------------

 

 

 

 

 





 



