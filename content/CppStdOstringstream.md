



 

 

 

 

 

([C++](Cpp.md)) [std::ostringstream](CppOstringstream.md)
===========================================================

 

[std::ostringstream](CppOstringstream.md) is an [STL](CppStl.md)
output [stream](CppStream.md) interface for
[std::string](CppString.md) manipulation.

 

In the example below, [int](CppInt.md) and [std::string](CppString.md)
are appended to a [std::ostringstream](CppOstringstream.md), before the
[std::ostringstream](CppOstringstream.md) is finally converted to
[std::string](CppString.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <sstream>  int main() {   std::ostringstream s;   const int first_digits = 123;   const std::string dot = ".";   const int last_digits = 456;   s << first_digits << dot << last_digits;   std::cout << s.str() << '\n'; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::ostringstream](http://www.cplusplus.com/reference/iostream/ostringstream)
-   [Article about
    std::ostringstream](http://www.artima.com/cppsource/streamstrings.html)

 

 

 

 

 





 



