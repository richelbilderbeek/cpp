
 

 

 

 

 

([C++](Cpp.md)) [InsertionSort](CppInsertionSort.md)
======================================================

 

[InsertionSort](CppInsertionSort.md) is a [sorting](CppSort.md) [code
snippet](CppCodeSnippets.md) to perform an insertion sort.

 

-   [Download the Qt Creator project
    'CppInsertionSort' (zip)](CppInsertionSort.zip)

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <vector> ///Sort a std::vector using insertion sort ///From http://www.richelbilderbeek.nl/CppInsertionSort.htm template <typename T> void InsertionSort(std::vector<T>& v) {   const int size = v.size();   for(int i=1; i!=size; ++i)   {     for(int j=0; j<i; ++j)     {       if (v[j] > v[i])       {         const int temp = v[j];         v[j] = v[i];         for(int k=i; k>j; --k) { v[k] = v[k-1]; }         v[j+1] = temp;       }     }   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
