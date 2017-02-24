



 

 

 

 

 

([C++](Cpp.htm)) [std::ws](CppWs.htm)
=====================================

 

[std::ws](CppWs.htm) is an [STL](CppStl.htm) [stream](CppStream.htm)
modifier to discard whitespace up until the following character.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <sstream> #include <string>  int main() {   const std::string s = "X \t \n      Y";   std::istringstream i(s);    std::string sub1;   std::string sub2;    i >> sub1 >> std::ws >> sub2;    assert(sub1 == "X");   assert(sub2 == "Y"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [www.cplusplus.com page about
    std::ws](http://www.cplusplus.com/reference/iostream/manipulators/ws/)

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
