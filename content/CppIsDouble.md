
 

 

 

 

 

([C++](Cpp.md)) [IsDouble](CppIsDouble.md)
============================================

 

[IsDouble](CppIsDouble.md) is a [check](CppCheck.md) [code
snippet](CppCodeSnippets.md) to check if a [std::string](CppStdString.md)
or [AnsiString](CppAnsiString.md) can be converted to a
[double](CppDouble.md).

 

[IsDouble](CppIsDouble.md) is shown in two flavors:

-   [IsDouble](CppIsDouble.md) for [std::string](CppStdString.md)
-   [IsDouble](CppIsDouble.md) for [AnsiString](CppAnsiString.md)

 

For [std::strings](CppStdString.md), [CanCast](CppCanCast.md) and
[CanLexicalCast](CppCanLexicalCast.md) are more general versions of
[IsDouble](CppIsDouble.md).

 

 

 

 

 

[IsDouble](CppIsDouble.md) for [std::string](CppStdString.md)
------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream>  //From http://www.richelbilderbeek.nl/CppIsDouble.htm bool IsDouble(const std::string& s) {   std::istringstream i(s);   double temp;   return ( (i >> temp) ? true : false ); }  //From http://www.richelbilderbeek.nl/CppIsDouble.htm bool IsDouble(const std::string& s, double& rDouble) {   std::istringstream i(s);   if (i >> rDouble)   {     return true;   }   rDouble = 0.0;   return false; }  int main() {   assert(IsDouble("123.456")==true);   assert(IsDouble("abcdefg")==false);    double d = 0.0;   if (IsDouble("3.14",d) == true)   {     assert(d==3.14);   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[IsDouble](CppIsDouble.md) for [AnsiString](CppAnsiString.md)
---------------------------------------------------------------

 

This code [compiles](CppCompile.md) cleanly under [C++
Builder](CppBuilder.md) 6.0

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppIsDouble.htm const bool IsDouble(const AnsiString& s) {   try   {     s.ToDouble();     return true;   }   catch (EConvertError& e)   {     return false;    } }  //From http://www.richelbilderbeek.nl/CppIsDouble.htm const bool IsDouble(const AnsiString& s, double& rDouble) {   try   {     rDouble = s.ToDouble();     return true;   }   catch (EConvertError& e)   {     rDouble = 0.0;     return false;    } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

