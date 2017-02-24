
 

 

 

 

 

([C++](Cpp.md)) [ReverseString](CppReverseString.md)
======================================================

 

[ReverseString](CppReverseString.md) is a [std::string](CppString.md)
[code snippets](CppCodeSnippets.md) to reverse a
[std::string](CppString.md).

 

Thanks to HK\_MP5KPDW for showing me this (even shorter) version of
[ReverseString](CppReverseString.md).

 

-   [Download the Qt Creator project
    'CppReverseString' (zip)](CppReverseString.zip)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>  //From http://www.richelbilderbeek.nl/CppReverseString.htm const std::string ReverseString(const std::string& s) {   return std::string(s.rbegin(),s.rend()); }  int main() {   assert(ReverseString("")=="");   assert(ReverseString("1")=="1");   assert(ReverseString("AB")=="BA");   assert(ReverseString("123")=="321");   assert(ReverseString("abcd")=="dcba"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

