
 

 

 

 

 

([C++](Cpp.md)) [cln::cl\_I](CppCl_I.md)
==========================================

 

[cln::cl\_I](CppCl_I.md) is the [CLN](CppCln.md) [data
type](CppDataType.md) for an near-infinite-sized [int](CppInt.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <cln/cln.h>  //From http://www.richelbilderbeek.nl/CppClnExample1.htm int main() {   //Regular int   int x = 1;    //CLN int   cln::cl_I y = 1;    for (int i=1; i!=50; ++i)   {     x*=i;     y*=i;     std::cout << i << "! : " << x << '\t' << y << '\n';   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[cln::cl\_I](CppCl_I.md) [code snippets](CppCodeSnippets.md)
--------------------------------------------------------------

 

1.  [CliToInt, convert cln::cl\_I to int](CppCliToInt.md)
2.  [CliToStr, convert cln::cl\_I to std::string](CppCliToStr.md)
3.  [IntToStrWithSep, add thousands seperators](CppIntToStrWithSep.md)
4.  [SafeIntToCli, convert int to cln::cl\_I](CppSafeIntToCli.md)

 

 

 

 

 

 

