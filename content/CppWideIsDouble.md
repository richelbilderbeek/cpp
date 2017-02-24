
 

 

 

 

 

([C++](Cpp.md)) [WideIsDouble](CppWideIsDouble.md)
====================================================

 

Checks if a WideString can be converted to a double.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppWideIsDouble.htm bool WideIsDouble(const WideString& s, double& rDouble) {   const AnsiString a(s);   return TryStrToFloat(a, rDouble); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
