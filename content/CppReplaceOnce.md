
 

 

 

 

 

([C++](Cpp.md)) [ReplaceOnce](CppReplaceOnce.md)
==================================================

 

[ReplaceOnce](CppReplaceOnce.md) is a [std::string](CppStdString.md)
[replace](CppReplace.md) [code snippet](CppCodeSnippets.md) to replace
a substring by another in a certain [std::string](CppStdString.md) once.

 

Use [ReplaceAll](CppReplaceAll.md) to replace all substrings in a
certain [std::string](CppStdString.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string>   //From http://www.richelbilderbeek.nl/CppReplaceOnce.htm const std::string ReplaceOnce(   std::string s,   const std::string& replaceWhat,   const std::string& replaceWithWhat) {   const int pos = s.find(replaceWhat);   if (pos==-1) return s;   s.replace(pos,replaceWhat.size(),replaceWithWhat);   return s; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

