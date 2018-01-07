
 

 

 

 

 

([C++](Cpp.md)) [CreateVector](CppCreateVector.md)
====================================================

 

[CreateVector](CppCreateVector.md) is a [std::vector](CppStdVector.md)
[code snippet](CppCodeSnippets.md) to create a
[std::vector](CppStdVector.md) from three values.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppCreateVector.htm template <class T> const std::vector<T> CreateVector(const T& a, const T& b, const T& c) {   std::vector<T> v;   v.reserve(3);   v.push_back(a);   v.push_back(b);   v.push_back(c);   return v; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

