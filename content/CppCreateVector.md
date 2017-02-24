



 

 

 

 

 

([C++](Cpp.htm)) [CreateVector](CppCreateVector.htm)
====================================================

 

[CreateVector](CppCreateVector.htm) is a [std::vector](CppVector.htm)
[code snippet](CppCodeSnippets.htm) to create a
[std::vector](CppVector.htm) from three values.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppCreateVector.htm template <class T> const std::vector<T> CreateVector(const T& a, const T& b, const T& c) {   std::vector<T> v;   v.reserve(3);   v.push_back(a);   v.push_back(b);   v.push_back(c);   return v; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



