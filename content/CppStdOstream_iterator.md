[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) std::ostream\_iterator
=======================================

 

An [iterator](CppIterator.htm).

 

 

 

 

 

Example: [CoutVector](CppCoutVector.htm)
----------------------------------------

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector> #include <iterator> #include <iostream> #include <ostream>  //From http://www.richelbilderbeek.nl/CppCoutVector.htm template <class T> void CoutVector(const std::vector<T>& v) {   std::copy(v.begin(),v.end(),std::ostream_iterator<T>(std::cout,"\n")); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
