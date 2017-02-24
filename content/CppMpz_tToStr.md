
 

 

 

 

 

([C++](Cpp.md)) [Mpz\_tToStr](CppMpz_tToStr.md)
=================================================

 

[Mpz\_tToStr](CppMpz_tToStr.md) is a [code
snippet](CppCodeSnippets.md) to [convert](CppConvert.md) a
[GMP](CppGmp.md) mpz\_t [data type](CppDataType.htm%22) to a
[std::string](CppString.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <gmpxx.h>  ///From http://www.richelbilderbeek.nl/CppMpz_tToStr.htm const std::string Mpz_tToStr(const mpz_t& i) {   static char buffer[256];   mpz_get_str(buffer,10,i);   return std::string(buffer); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

For full example, [go to the 'Hello Gmp' page](CppHelloGmp.md).

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
