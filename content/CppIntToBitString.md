
 

 

 

 

 

([C++](Cpp.md)) [IntToBitString](CppIntToBitString.md)
========================================================

 

[IntToBitString](CppIntToBitString.md) is a [bit
operation](CppBitOperation.md) [conversion](CppConvert.md) [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) an
[integer](CppInt.md) to a [std::string](CppStdString.md) of zeroes and
ones.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppIntToBitString.htm const std::string IntToBitString(int i) {   assert( i >= 0 && "Did not bother to supply this yet");   std::string s = (i % 2 ? "1" : "0" );   i>>=1;   while (i > 0)   {     s = (i % 2 ? "1" : "0") + s;     i>>=1;   }   return s; } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

