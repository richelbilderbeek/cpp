
 

 

 

 

 

([C++](Cpp.md)) [std::typeinfo](CppTypeinfo.md)
=================================================

 

[std::typeinfo](CppTypeinfo.md) is an [STL](CppStl.md)
[class](CppClass.md) [returned](CppReturn.md) by
[typeid](CppTypeid.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <string> #include <typeinfo>  int main() {   assert(std::string(typeid(int).name())=="i");   assert(std::string(typeid(double).name())=="d");   assert(std::string(typeid(std::string).name())=="Ss"); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

