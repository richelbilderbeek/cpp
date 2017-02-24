



 

 

 

 

 

([C++](Cpp.htm)) [std::ostringstream](CppOstringstream.htm)
===========================================================

 

[std::ostringstream](CppOstringstream.htm) is an [STL](CppStl.htm)
output [stream](CppStream.htm) interface for
[std::string](CppString.htm) manipulation.

 

In the example below, [int](CppInt.htm) and [std::string](CppString.htm)
are appended to a [std::ostringstream](CppOstringstream.htm), before the
[std::ostringstream](CppOstringstream.htm) is finally converted to
[std::string](CppString.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <sstream>  int main() {   std::ostringstream s;   const int first_digits = 123;   const std::string dot = ".";   const int last_digits = 456;   s << first_digits << dot << last_digits;   std::cout << s.str() << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::ostringstream](http://www.cplusplus.com/reference/iostream/ostringstream)
-   [Article about
    std::ostringstream](http://www.artima.com/cppsource/streamstrings.html)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
