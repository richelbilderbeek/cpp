



 

 

 

 

 

([C++](Cpp.htm)) [std::iswgraph](CppIswgraph.htm)
=================================================

 

[std::iswgraph](CppIswgraph.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to [check](CppCheck.htm) if a
[wchar\_t](CppWchar_t.htm) is a printable character other than a space.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cwctype> #include <iostream>  int main() {   for (wchar_t i = 0; i!=256; ++i)   {     if (std::iswgraph(i))     {       std::wcout << i;     }   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------------------------------------------------------------------
  ``  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ``
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
