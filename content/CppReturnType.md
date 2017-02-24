[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [return type](CppReturnType.htm)
=================================================

 

The [return type](CppReturnType.htm) of a [function](CppFunction.htm)
denotes the [data type](CppDataType.htm) it [returns](CppReturn.htm).

 

For example, the [function](CppFunction.htm) below,
[ToInt](CppToInt.htm), [returns](CppReturn.htm) an [int](CppInt.htm), so
its [return type](CppReturnType.htm) is [int](CppInt.htm).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>  ///ToInt converts a std::string to an integer ///From http://www.richelbilderbeek.nl/CppToInt.htm const int ToInt(const std::string& s) {   return std::atoi(s.c_str()); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Don't return [pointers](CppPointer.htm) or
    [references](CppReference.htm) to [local](CppLocal.htm)
    [variables](CppVariable.htm) \[1\]
-   For large [return type](CppReturnType.htm), use a [move
    constructor](CppMoveConstructor.htm) \[2\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[4\] Don't return pointers or references to
    local variables'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5.
    Advice. page 547: '\[4\] For large results, use a move constructor'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
