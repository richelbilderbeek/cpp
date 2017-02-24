
 

 

 

 

 

([C++](Cpp.md)) [address](CppAddress.md)
==========================================

 

An [address](CppAddress.md) is location in a a computer's
[memory](CppMemory.md) where it stores all its
[variables](CppVariable.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   const int i = 10;   std::cout << i  << '\n'; //Request the value of i   std::cout << &i << '\n'; //Request the address of i }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------
  ` 10 0xbfbcea2c`
  ------------------

 

A [pointer](CppPointer.md) is a [data type](CppDataType.md) for
[addresses](CppAddress.md).

 

 

 

 

 

