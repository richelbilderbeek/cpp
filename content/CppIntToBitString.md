



 

 

 

 

 

([C++](Cpp.htm)) [IntToBitString](CppIntToBitString.htm)
========================================================

 

[IntToBitString](CppIntToBitString.htm) is a [bit
operation](CppBitOperation.htm) [conversion](CppConvert.htm) [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) an
[integer](CppInt.htm) to a [std::string](CppString.htm) of zeroes and
ones.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppIntToBitString.htm const std::string IntToBitString(int i) {   assert( i >= 0 && "Did not bother to supply this yet");   std::string s = (i % 2 ? "1" : "0" );   i>>=1;   while (i > 0)   {     s = (i % 2 ? "1" : "0") + s;     i>>=1;   }   return s; } `
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



