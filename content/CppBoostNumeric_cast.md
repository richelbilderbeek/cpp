



 

 

 

 

 

([C++](Cpp.md)) [boost::numeric\_cast](CppNumeric_cast.md)
============================================================

 

[boost::numeric\_cast](CppNumeric_cast.md) is a safe number
[conversion](CppConvert.md) [function](CppFunction.md) that
[throws](CppThrow.md) an [exception](CppException.md) if the
[conversion](CppConvert.md) cannot succeed.

 

In the example below, the highest possible [int](CppInt.md) is
[converted](CppConvert.md) to a [short](CppShort.md). Because this
will fail, [boost::numeric\_cast](CppNumeric_cast.md)
[throws](CppThrow.md) an [exception](CppException.md).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/static_assert.hpp> #include <boost/numeric/conversion/cast.hpp> #include <boost/limits.hpp>  int main() {   //Assume that short occupies less storage in memory than int.   BOOST_STATIC_ASSERT(sizeof(short) < sizeof(int));    //Obtain the highest integer value.   const int x = boost::numeric::bounds<int>::highest();    //Try to store the highest integer value as a short.   //This will throw boost::numeric::positive_overflow,   //because a short occupies to few memory to store such   //a large number.   const short y = boost::numeric_cast<short>(x); } `
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



