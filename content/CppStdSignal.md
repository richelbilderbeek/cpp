



 

 

 

 

 

([C++](Cpp.md)) [std::signal](CppStdSignal.md)
================================================

 

[std::signal](CppStdSignal.md) is an [STL](CppStl.md)
[function](CppFunction.md) to set a [function](CppFunction.md) to
respond to system signals.

 

In the example below, an [assert](CppAssert.md) is set to fail, causing
[std::abort](CppAbort.md), which emits the abort signal ('SIGABRT').
With [std::signal](CppStdSignal.md) onAbort is set to handle this.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <csignal> #include <iostream>  void onAbort(int) {   std::cout << "Abort" << std::endl; }  int main() {   std::signal(SIGABRT,onAbort);   assert(1==2); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Signal](CppSignal.md) pages
-----------------------------

 

-   ![Boost](PicBoost.png) [Boost signal](CppBoostSignal.md)
-   ![STL](PicStl.png) [std::signal](CppStdSignal.md)
-   ![Qt](PicQt.png) [Qt signal](CppQtSignal.md)

 

 

 

 

 





 



