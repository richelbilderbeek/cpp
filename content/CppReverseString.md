
 

 

 

 

 

([C++](Cpp.md)) [ReverseString](CppStdReverseString.md)
======================================================

 

[ReverseString](CppStdReverseString.md) is a [std::string](CppStdString.md)
[code snippets](CppCodeSnippets.md) to reverse a
[std::string](CppStdString.md).

 

Thanks to HK\_MP5KPDW for showing me this (even shorter) version of
[ReverseString](CppStdReverseString.md).

 

-   [Download the Qt Creator project
    'CppStdReverseString' (zip)](CppStdReverseString.zip)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>  //From http://www.richelbilderbeek.nl/CppStdReverseString.htm const std::string ReverseString(const std::string& s) {   return std::string(s.rbegin(),s.rend()); }  int main() {   assert(ReverseString("")=="");   assert(ReverseString("1")=="1");   assert(ReverseString("AB")=="BA");   assert(ReverseString("123")=="321");   assert(ReverseString("abcd")=="dcba"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

