[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::typeinfo](CppTypeinfo.htm)
=================================================

 

[std::typeinfo](CppTypeinfo.htm) is an [STL](CppStl.htm)
[class](CppClass.htm) [returned](CppReturn.htm) by
[typeid](CppTypeid.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <typeinfo>  int main() {   assert(std::string(typeid(int).name())=="i");   assert(std::string(typeid(double).name())=="d");   assert(std::string(typeid(std::string).name())=="Ss"); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
