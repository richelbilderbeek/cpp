[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::invalid\_argument](CppInvalid_argument.htm)
==================================================================

 

An exception that is [thrown](CppThrow.htm) due to invalid
[arguments](CppArgument.htm).

 

In the [exception hierarchy](CppExceptionHierarchy.htm),
[std::invalid\_argument](CppInvalid_argument.htm) is a derived class
from [std::logic\_error](CppLogic_error.htm).

 

 

 

 

 

Example
-------

 

[std::invalid\_argument](CppInvalid_argument.htm) is
[thrown](CppThrow.htm) when the [constructor](CppConstructor.htm) of
[std::bitset](CppBitset.htm) is given a [std::string](CppString.htm)
that does not consist of zeroes and ones:

 

  --------------------------------------------------------------------------------------
  ` #include <bitset>  int main() {   std::bitset<8> byte(std::string("01234567")); }`
  --------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

1.  [GCC reference on
    std::invalid\_argument](http://gcc.gnu.org/onlinedocs/libstdc++/libstdc++-html-USERS-3.4/classstd_1_1invalid__argument.html)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
