
 

 

 

 

 

([C++](Cpp.md)) [std::iswgraph](CppIswgraph.md)
=================================================

 

[std::iswgraph](CppIswgraph.md) is an [STL](CppStl.md)
[function](CppFunction.md) to [check](CppCheck.md) if a
[wchar\_t](CppWchar_t.md) is a printable character other than a space.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cwctype> #include <iostream>  int main() {   for (wchar_t i = 0; i!=256; ++i)   {     if (std::iswgraph(i))     {       std::wcout << i;     }   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------------------------------------------------------------------
  ``  !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~ ``
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

