



 

 

 

 

 

([C++](Cpp.htm)) [boost::numeric\_cast](CppNumeric_cast.htm)
============================================================

 

[boost::numeric\_cast](CppNumeric_cast.htm) is a safe number
[conversion](CppConvert.htm) [function](CppFunction.htm) that
[throws](CppThrow.htm) an [exception](CppException.htm) if the
[conversion](CppConvert.htm) cannot succeed.

 

In the example below, the highest possible [int](CppInt.htm) is
[converted](CppConvert.htm) to a [short](CppShort.htm). Because this
will fail, [boost::numeric\_cast](CppNumeric_cast.htm)
[throws](CppThrow.htm) an [exception](CppException.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/static_assert.hpp> #include <boost/numeric/conversion/cast.hpp> #include <boost/limits.hpp>  int main() {   //Assume that short occupies less storage in memory than int.   BOOST_STATIC_ASSERT(sizeof(short) < sizeof(int));    //Obtain the highest integer value.   const int x = boost::numeric::bounds<int>::highest();    //Try to store the highest integer value as a short.   //This will throw boost::numeric::positive_overflow,   //because a short occupies to few memory to store such   //a large number.   const short y = boost::numeric_cast<short>(x); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



