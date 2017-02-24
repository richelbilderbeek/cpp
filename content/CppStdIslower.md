



 

 

 

 

 

([C++](Cpp.htm)) [std::islower](CppIslower.htm)
===============================================

 

[std::islower](CppIslower.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to check if a [character](CppChar.htm) is a
lowercase alphabetic letter.

 

-   [Download the Qt Creator project 'CppIslower' (zip)](CppIslower.zip)

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cctype>  int main() {   assert(std::islower('a'));   assert(!std::islower('A'));   assert(!std::islower('1'));   assert(!std::islower('@')); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
