



 

 

 

 

 

([C++](Cpp.md)) [char](CppChar.md)
====================================

 

[char](CppChar.md) is a [keyword](CppKeyword.md) for a
(single-)character [data type](CppDataType.md) to store a [character
literal](CppCharacterLiteral.md). [std::string](CppString.md) can be
used to store a collection of [char](CppChar.md).

 

  -----------------------------------------
  ` int main() {   const char c = 'x'; }`
  -----------------------------------------

 

Prefer plain [char](CppChar.md) over [signed](CppSigned.md)
[char](CppChar.md) and [unsigned](CppUnsigned.md) [char](CppChar.htm)
\[1\]. Use [std::string](CppString.md) rather than zero-terminated
[arrays](CppArray.md) of [chars](CppChar.md) \[2\].

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[9\] Prefer plain char over signed char and
    unsigned char'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[7\] Use string rather than zero-terminated
    arrays of chars'

 

 

 

 

 





 



