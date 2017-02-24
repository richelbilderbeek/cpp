



 

 

 

 

 

([C++](Cpp.htm)) [std::abort](CppAbort.htm)
===========================================

 

[std::abort](CppAbort.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to abort the program from any point.

 

In the example below, [std::signal](CppStdSignal.htm) sets the function
onAbort to handle a possible abort. Then [std::abort](CppAbort.htm) is
called and handled by onAbort.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <csignal> #include <iostream>  void onAbort(int) {   std::cout << "Abort" << std::endl; }  int main() {   std::signal(SIGABRT,onAbort);   std::abort(); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
