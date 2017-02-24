



 

 

 

 

 

([C++](Cpp.htm)) [ClearChart](CppClearChart.htm)
================================================

 

[ClearChart](CppClearChart.htm) is a [TChart](CppTChart.htm) [code
snippet](CppVclCodeSnippets.htm) to clear all series.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <Chart.hpp>   //From http://www.richelbilderbeek.nl/CppClearChart.htm void ClearChart(TChart * const c) {   assert(c); // c must be an initialized pointer   const int sz = c->SeriesCount();   for (int i=0; i!=sz; ++i)   {     c->Series[i]->Clear();   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 




This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
