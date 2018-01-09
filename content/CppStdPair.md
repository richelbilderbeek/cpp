
 

 

 

 

 

([C++](Cpp.md)) [std::pair](CppStdPair.md)
=========================================

 

[std::pair](CppStdPair.md) is a [container](CppContainer.md) for holding
two values of any [data type](CppDataType.md). So,
[std::pair](CppStdPair.md) can be used instead of a
[struct](CppStruct.md) with two members.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <utility>   int main() {   //Make a nickname-phonenumber pair   std::pair<std::string,int> p("Bilderbikkel",1234567890); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------

 

The [function](CppFunction.md) [std::make\_pair](CppMake_pair.md) can
save typing in creating [std::pair](CppStdPair.md)s (as it saves you
redeclaring the [data types](CppDataType.md)).

 

 

 

 

 

 

