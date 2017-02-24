

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ReplaceOnce](CppReplaceOnce.htm)
==================================================

 

[ReplaceOnce](CppReplaceOnce.htm) is a [std::string](CppString.htm)
[replace](CppReplace.htm) [code snippet](CppCodeSnippets.htm) to replace
a substring by another in a certain [std::string](CppString.htm) once.

 

Use [ReplaceAll](CppReplaceAll.htm) to replace all substrings in a
certain [std::string](CppString.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>   //From http://www.richelbilderbeek.nl/CppReplaceOnce.htm const std::string ReplaceOnce(   std::string s,   const std::string& replaceWhat,   const std::string& replaceWithWhat) {   const int pos = s.find(replaceWhat);   if (pos==-1) return s;   s.replace(pos,replaceWhat.size(),replaceWithWhat);   return s; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
