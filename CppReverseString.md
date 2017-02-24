[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ReverseString](CppReverseString.htm)
======================================================

 

[ReverseString](CppReverseString.htm) is a [std::string](CppString.htm)
[code snippets](CppCodeSnippets.htm) to reverse a
[std::string](CppString.htm).

 

Thanks to HK\_MP5KPDW for showing me this (even shorter) version of
[ReverseString](CppReverseString.htm).

 

-   [Download the Qt Creator project
    'CppReverseString' (zip)](CppReverseString.zip)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <string>  //From http://www.richelbilderbeek.nl/CppReverseString.htm const std::string ReverseString(const std::string& s) {   return std::string(s.rbegin(),s.rend()); }  int main() {   assert(ReverseString("")=="");   assert(ReverseString("1")=="1");   assert(ReverseString("AB")=="BA");   assert(ReverseString("123")=="321");   assert(ReverseString("abcd")=="dcba"); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
