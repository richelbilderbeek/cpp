[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Mpz\_tToStr](CppMpz_tToStr.htm)
=================================================

 

[Mpz\_tToStr](CppMpz_tToStr.htm) is a [code
snippet](CppCodeSnippets.htm) to [convert](CppConvert.htm) a
[GMP](CppGmp.htm) mpz\_t [data type](CppDataType.htm%22) to a
[std::string](CppString.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <gmpxx.h>  ///From http://www.richelbilderbeek.nl/CppMpz_tToStr.htm const std::string Mpz_tToStr(const mpz_t& i) {   static char buffer[256];   mpz_get_str(buffer,10,i);   return std::string(buffer); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

For full example, [go to the 'Hello Gmp' page](CppHelloGmp.htm).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
