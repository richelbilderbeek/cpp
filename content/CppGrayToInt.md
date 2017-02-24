



 

 

 

 

 

([C++](Cpp.md)) [GrayToInt](CppGrayToInt.md)
==============================================

 

[GrayToInt](CppGrayToInt.md) is a [bit operation](CppBitOperation.md)
[conversion](CppConvert.md) [code snippet](CppCodeSnippets.md) to
[convert](CppConvert.md) the [integer](CppInt.md) value from a Gray
code. To [convert](CppConvert.md) a Gray code to an integer, use
[IntToGray](CppIntToGray.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppGrayToInt.htm //Modified from Press et al., 2002, Numerical Recipies in C++, //ISBN 0 521 75033 4 int GrayToInt(int i) {   int power = 1;   while (1)   {     const int j = i >> power;     i ^= j;     if (j == 0 || power == 16) return i;     power <<= 1;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



