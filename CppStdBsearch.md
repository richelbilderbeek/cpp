[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::bsearch](CppBsearch.htm)
===============================================

 

[std::bsearch](CppBsearch.htm) ('bsearch' is an abbreviation of 'binary
search') is an [STL](CppStl.htm) [algorithm](CppAlgorithm.htm) to search
for a value in a sorted [container](CppContainer.htm).

 

-   [Download the Qt Creator project 'CppBsearch' (zip)](CppBsearch.zip)

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <vector>  //The function to compare two elements int CompareInt(const void * const a, const void * const b) {   const int x = *static_cast<const int *>(a);   const int y = *static_cast<const int *>(b);   if (x < y) return -1;   if (x > y) return  1;   return 0; }  //Create a sorted vector of squares const std::vector<int> CreateVector() {   std::vector<int> v;   for (int i=0; i!=10; ++i) v.push_back(i*i);   return v; }  int main () {   //Create a sorted vector of squares   const std::vector<int> v = CreateVector();   for (int i=0; i!=10; ++i)   {     //Search for i in v     const int * const p = static_cast<const int*>(       std::bsearch(&i,&v[0],v.size(),sizeof(int),CompareInt));     //Display if i is present     std::cout << i << " is " << (p ? "" : "not") << " present\n";   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` 0 is  present 1 is  present 2 is not present 3 is not present 4 is  present 5 is not present 6 is not present 7 is not present 8 is not present 9 is  present`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
