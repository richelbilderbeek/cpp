[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [InsertionSort](CppInsertionSort.htm)
======================================================

 

[InsertionSort](CppInsertionSort.htm) is a [sorting](CppSort.htm) [code
snippet](CppCodeSnippets.htm) to perform an insertion sort.

 

-   [Download the Qt Creator project
    'CppInsertionSort' (zip)](CppInsertionSort.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector> ///Sort a std::vector using insertion sort ///From http://www.richelbilderbeek.nl/CppInsertionSort.htm template <typename T> void InsertionSort(std::vector<T>& v) {   const int size = v.size();   for(int i=1; i!=size; ++i)   {     for(int j=0; j<i; ++j)     {       if (v[j] > v[i])       {         const int temp = v[j];         v[j] = v[i];         for(int k=i; k>j; --k) { v[k] = v[k-1]; }         v[j+1] = temp;       }     }   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
