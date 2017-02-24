

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::isupper](CppIsupper.htm)
===============================================

 

[std::isupper](CppIsupper.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to check if a [character](CppChar.htm) is an
uppercase alphabetic letter.

 

-   [Download the Qt Creator project 'CppIsupper' (zip)](CppIsupper.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cctype>  int main() {   assert(!std::isupper('a'));   assert(std::isupper('A'));   assert(!std::isupper('1'));   assert(!std::isupper('@')); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
