



 

 

 

 

 

([C++](Cpp.htm)) [std::signal](CppStdSignal.htm)
================================================

 

[std::signal](CppStdSignal.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to set a [function](CppFunction.htm) to
respond to system signals.

 

In the example below, an [assert](CppAssert.htm) is set to fail, causing
[std::abort](CppAbort.htm), which emits the abort signal ('SIGABRT').
With [std::signal](CppStdSignal.htm) onAbort is set to handle this.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <csignal> #include <iostream>  void onAbort(int) {   std::cout << "Abort" << std::endl; }  int main() {   std::signal(SIGABRT,onAbort);   assert(1==2); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Signal](CppSignal.htm) pages
-----------------------------

 

-   ![Boost](PicBoost.png) [Boost signal](CppBoostSignal.htm)
-   ![STL](PicStl.png) [std::signal](CppStdSignal.htm)
-   ![Qt](PicQt.png) [Qt signal](CppQtSignal.htm)

 

 

 

 

 





 



