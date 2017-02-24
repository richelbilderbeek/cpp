[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SortContainer](CppSortContainer.htm)
======================================================

 

[SortVector](CppSortVector.htm) is a [sorting](CppSort.htm) [code
snippet](CppCodeSnippets.htm) to [sort](CppSort.htm) a
[container](CppContainer.htm).

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector> #include <boost/foreach.hpp>  //From http://www.richelbilderbeek.nl/CppSortContainer.htm template <class T> T SortContainer(const T& v) {   T w(v);   std::sort(w.begin(),w.end());   return w; }  int main() {   //Create a std::vector with five random values   std::vector<int> v;   for (int i=0; i!=5; ++i) v.push_back(std::rand() % 100);    //Display the std::vector   BOOST_FOREACH(const int i, v) std::cout << i << " ";   std::cout << '\n';    const std::vector<int> w(SortContainer(v));   BOOST_FOREACH(const int i, w) std::cout << i << " ";   std::cout << '\n'; }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------
  ` 83 86 77 15 93  15 77 83 86 93 `
  ------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
