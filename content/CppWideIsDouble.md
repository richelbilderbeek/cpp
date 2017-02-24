



 

 

 

 

 

([C++](Cpp.htm)) [WideIsDouble](CppWideIsDouble.htm)
====================================================

 

Checks if a WideString can be converted to a double.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppWideIsDouble.htm bool WideIsDouble(const WideString& s, double& rDouble) {   const AnsiString a(s);   return TryStrToFloat(a, rDouble); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
