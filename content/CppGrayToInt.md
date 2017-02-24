



 

 

 

 

 

([C++](Cpp.htm)) [GrayToInt](CppGrayToInt.htm)
==============================================

 

[GrayToInt](CppGrayToInt.htm) is a [bit operation](CppBitOperation.htm)
[conversion](CppConvert.htm) [code snippet](CppCodeSnippets.htm) to
[convert](CppConvert.htm) the [integer](CppInt.htm) value from a Gray
code. To [convert](CppConvert.htm) a Gray code to an integer, use
[IntToGray](CppIntToGray.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppGrayToInt.htm //Modified from Press et al., 2002, Numerical Recipies in C++, //ISBN 0 521 75033 4 int GrayToInt(int i) {   int power = 1;   while (1)   {     const int j = i >> power;     i ^= j;     if (j == 0 || power == 16) return i;     power <<= 1;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
