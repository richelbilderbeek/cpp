
 

 

 

 

 

([C++](Cpp.md)) [WideIsInt](CppWideIsInt.md)
==============================================

 

Checks if a WideString can be converted to an integer.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppWideIsInt.htm bool WideIsInt(const WideString& s, int& rInt) {   const AnsiString a(s);   return TryStrToInt(a, rInt); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 



