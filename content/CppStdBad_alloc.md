



 

 

 

 

 

([C++](Cpp.md)) [std::bad\_alloc](CppBad_alloc.md)
====================================================

 

[std::bad\_alloc](CppBad_alloc.md) is an [exception](CppException.md)
and a [derived class](CppDerivedClass.md) from
[std::exception](CppException.md). [std::bad\_alloc](CppBad_alloc.md)
is [thrown](CppThrow.md) by [new](CppNew.md) when [new](CppNew.md)
fails.

 

[std::bad\_alloc](CppBad_alloc.md) is defined in the [header
file](CppHeaderFile.md) [new](CppNewH.md).

 

 

 

 

 

Example
-------

 

-   [Download the Qt Creator project
    'CppBad\_alloc' (zip)](CppBad_alloc.md)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <limits> #include <boost/numeric/conversion/bounds.hpp>  ///Example1 creates an array larger than memory can contain void Example1() {   //Assure that 2147483647 is the heighest value an int can contain using STL and Boost   assert(2147483647 == std::numeric_limits<int>::max());   assert(2147483647 == boost::numeric::bounds<int>::highest());    //Create the array with the largest possible size, the size its value   //being the heighest value an int can contain   const double * const i = new double[2147483647];    //Clean up   delete[] i; }  #include <iostream>  ///Examle2 leaks memory //(at my computer, the counter called i reached the value of 38) void Example2() {   for (int i=0; i!=100; ++i)   {     std::clog << i << '\n';     const double * const a = new double[10000000];     //delete[] a; //BAD: a must be deleted[], otherwise memory will leak   } }  int main() {   //Choose your way to crash your computer:   Example1();   //Example2(); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Screen output
-------------

 

  -------------------------------------------------------------------------------------------------------------------------------------
  ` terminate called after throwing an instance of 'std::bad_alloc'   what():  std::bad_alloc The program has unexpectedly finished.`
  -------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [cplusplus.com page about
    std::bad\_alloc](http://www.cplusplus.com/reference/std/new/bad_alloc)

 

 

 

 

 





 



