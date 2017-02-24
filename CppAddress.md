[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [address](CppAddress.htm)
==========================================

 

An [address](CppAddress.htm) is location in a a computer's
[memory](CppMemory.htm) where it stores all its
[variables](CppVariable.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int i = 10;   std::cout << i  << '\n'; //Request the value of i   std::cout << &i << '\n'; //Request the address of i }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 10 0xbfbcea2c`
  ------------------

 

A [pointer](CppPointer.htm) is a [data type](CppDataType.htm) for
[addresses](CppAddress.htm).

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
