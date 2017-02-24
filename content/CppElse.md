



 

 

 

 

 

([C++](Cpp.htm)) [else](CppElse.htm)
====================================

 

[else](CppElse.htm) is a [Keyword](CppKeyword.htm) to allow conditional
program flow.[else](CppElse.htm) will always follow an [if](CppIf.htm)
statement and is optional to it.

 

  ---------------------------------------------------------------------------------------------------------------
  ` if ( /* condition */ ) {   //Do this when condition is true } else {   //Do this when condition is false }`
  ---------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example
-------

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   //Draw a random number   const int x = std::rand();     if (x % 2 == 0)   {     std::cout << " The value of " << x << " is even." << std::endl;   }   else   {     std::cout << " The value of " << x << " is odd." << std::endl;   } }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
