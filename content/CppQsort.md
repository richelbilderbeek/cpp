



 

 

 

 

 

([C++](Cpp.htm)) [std::qsort](CppQsort.htm)
===========================================

 

[std::qsort](CppQsort.htm) is a [function](CppFunction.htm) to
[sort](CppSort.htm) a [container](CppContainer.htm).

 

-   [Download the Qt Creator project 'CppQsort' (zip)](CppQsort.htm)

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cstdlib> #include <vector>  int QsortIntCompare(const void * a, const void * b) {   const int x = *static_cast<const int*>(a);   const int y = *static_cast<const int*>(b);   if (x < y) return -1;   if (x > y) return  1;   return 0; }  ///Sort a std::vector using std::qsort void Qsort(std::vector<int>& v) {   std::qsort(&v[0],v.size(),sizeof(int),QsortIntCompare); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
