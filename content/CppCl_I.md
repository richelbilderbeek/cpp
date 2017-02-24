



 

 

 

 

 

([C++](Cpp.htm)) [cln::cl\_I](CppCl_I.htm)
==========================================

 

[cln::cl\_I](CppCl_I.htm) is the [CLN](CppCln.htm) [data
type](CppDataType.htm) for an near-infinite-sized [int](CppInt.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <cln/cln.h>  //From http://www.richelbilderbeek.nl/CppClnExample1.htm int main() {   //Regular int   int x = 1;    //CLN int   cln::cl_I y = 1;    for (int i=1; i!=50; ++i)   {     x*=i;     y*=i;     std::cout << i << "! : " << x << '\t' << y << '\n';   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[cln::cl\_I](CppCl_I.htm) [code snippets](CppCodeSnippets.htm)
--------------------------------------------------------------

 

1.  [CliToInt, convert cln::cl\_I to int](CppCliToInt.htm)
2.  [CliToStr, convert cln::cl\_I to std::string](CppCliToStr.htm)
3.  [IntToStrWithSep, add thousands seperators](CppIntToStrWithSep.htm)
4.  [SafeIntToCli, convert int to cln::cl\_I](CppSafeIntToCli.htm)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
