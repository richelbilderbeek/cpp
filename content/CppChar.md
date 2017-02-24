

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [char](CppChar.htm)
====================================

 

[char](CppChar.htm) is a [keyword](CppKeyword.htm) for a
(single-)character [data type](CppDataType.htm) to store a [character
literal](CppCharacterLiteral.htm). [std::string](CppString.htm) can be
used to store a collection of [char](CppChar.htm).

 

  -----------------------------------------
  ` int main() {   const char c = 'x'; }`
  -----------------------------------------

 

Prefer plain [char](CppChar.htm) over [signed](CppSigned.htm)
[char](CppChar.htm) and [unsigned](CppUnsigned.htm) [char](CppChar.htm)
\[1\]. Use [std::string](CppString.htm) rather than zero-terminated
[arrays](CppArray.htm) of [chars](CppChar.htm) \[2\].

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[9\] Prefer plain char over signed char and
    unsigned char'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[7\] Use string rather than zero-terminated
    arrays of chars'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
