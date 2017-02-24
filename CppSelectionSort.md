[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [SelectionSort](CppSelectionSort.htm)
======================================================

 

[SelectionSort](CppSelectionSort.htm) is a [sort](CppSort.htm) [code
snippet](CppCodeSnippets.htm) to perform a selection sort.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector>  //From http://www.richelbilderbeek.nl/CppSelectionSort.htm template <typename T> void SelectionSort(std::vector<T>& v) {   const int size = v.size();   for(int i=0; i!=size-1; ++i)   {     for(int j=i+1; j!=size; ++j)     {       if (v[i]> v[j])       {         std::swap(v[i],v[j]);       }     }   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
