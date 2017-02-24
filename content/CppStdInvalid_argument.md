
 

 

 

 

 

([C++](Cpp.md)) [std::invalid\_argument](CppInvalid_argument.md)
==================================================================

 

An exception that is [thrown](CppThrow.md) due to invalid
[arguments](CppArgument.md).

 

In the [exception hierarchy](CppExceptionHierarchy.md),
[std::invalid\_argument](CppInvalid_argument.md) is a derived class
from [std::logic\_error](CppLogic_error.md).

 

 

 

 

 

Example
-------

 

[std::invalid\_argument](CppInvalid_argument.md) is
[thrown](CppThrow.md) when the [constructor](CppConstructor.md) of
[std::bitset](CppBitset.md) is given a [std::string](CppString.md)
that does not consist of zeroes and ones:

 

  --------------------------------------------------------------------------------------
  ` #include <bitset>  int main() {   std::bitset<8> byte(std::string("01234567")); }`
  --------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

1.  [GCC reference on
    std::invalid\_argument](http://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-3.4/classstd_1_1invalid__argument.html)

 

 

 

 

 

 

