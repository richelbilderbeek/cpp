
 

 

 

 

 

([C++](Cpp.md)) [return type](CppReturnType.md)
=================================================

 

The [return type](CppReturnType.md) of a [function](CppFunction.md)
denotes the [data type](CppDataType.md) it [returns](CppReturn.md).

 

For example, the [function](CppFunction.md) below,
[ToInt](CppToInt.md), [returns](CppReturn.md) an [int](CppInt.md), so
its [return type](CppReturnType.md) is [int](CppInt.md).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  ///ToInt converts a std::string to an integer ///From http://www.richelbilderbeek.nl/CppToInt.htm const int ToInt(const std::string& s) {   return std::atoi(s.c_str()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Don't return [pointers](CppPointer.md) or
    [references](CppReference.md) to [local](CppLocal.md)
    [variables](CppVariable.md) \[1\]
-   For large [return type](CppReturnType.md), use a [move
    constructor](CppMoveConstructor.md) \[2\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[4\] Don't return pointers or references to
    local variables'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 547: '\[4\] For large results, use a move constructor'

 

 

 

 

 

 

