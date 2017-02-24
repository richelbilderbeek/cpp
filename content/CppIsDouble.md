



 

 

 

 

 

([C++](Cpp.htm)) [IsDouble](CppIsDouble.htm)
============================================

 

[IsDouble](CppIsDouble.htm) is a [check](CppCheck.htm) [code
snippet](CppCodeSnippets.htm) to check if a [std::string](CppString.htm)
or [AnsiString](CppAnsiString.htm) can be converted to a
[double](CppDouble.htm).

 

[IsDouble](CppIsDouble.htm) is shown in two flavors:

-   [IsDouble](CppIsDouble.htm) for [std::string](CppString.htm)
-   [IsDouble](CppIsDouble.htm) for [AnsiString](CppAnsiString.htm)

 

For [std::strings](CppString.htm), [CanCast](CppCanCast.htm) and
[CanLexicalCast](CppCanLexicalCast.htm) are more general versions of
[IsDouble](CppIsDouble.htm).

 

 

 

 

 

[IsDouble](CppIsDouble.htm) for [std::string](CppString.htm)
------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream>  //From http://www.richelbilderbeek.nl/CppIsDouble.htm bool IsDouble(const std::string& s) {   std::istringstream i(s);   double temp;   return ( (i >> temp) ? true : false ); }  //From http://www.richelbilderbeek.nl/CppIsDouble.htm bool IsDouble(const std::string& s, double& rDouble) {   std::istringstream i(s);   if (i >> rDouble)   {     return true;   }   rDouble = 0.0;   return false; }  int main() {   assert(IsDouble("123.456")==true);   assert(IsDouble("abcdefg")==false);    double d = 0.0;   if (IsDouble("3.14",d) == true)   {     assert(d==3.14);   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[IsDouble](CppIsDouble.htm) for [AnsiString](CppAnsiString.htm)
---------------------------------------------------------------

 

This code [compiles](CppCompile.htm) cleanly under [C++
Builder](CppBuilder.htm) 6.0

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppIsDouble.htm const bool IsDouble(const AnsiString& s) {   try   {     s.ToDouble();     return true;   }   catch (EConvertError& e)   {     return false;    } }  //From http://www.richelbilderbeek.nl/CppIsDouble.htm const bool IsDouble(const AnsiString& s, double& rDouble) {   try   {     rDouble = s.ToDouble();     return true;   }   catch (EConvertError& e)   {     rDouble = 0.0;     return false;    } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
