[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [CliToStr](CppCliToStr.htm)
============================================

 

[CliToStr](CppCliToStr.htm) is a [cln::cl\_I](CppCl_I.htm)
[conversion](CppConvert.htm) [code snippets](CppCodeSnippets.htm) to
[convert](CppConvert.htm) a [cln::cl\_I](CppCl_I.htm) to an
[std::string](CppString.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream> #include <string> #include <cln/cln.h>  ///CliToStr converts a cln::cl_I to std::string. ///From http://www.richelbilderbeek.nl/CppCliToStr.htm const std::string CliToStr(const cln::cl_I& i) {   std::stringstream s;   s << i;   return s.str(); }  int main() {   const std::string s = "12345678901234567890";   const cln::cl_I i(s.c_str());   const std::string t = CliToStr(i);   assert(s==t); } `
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
