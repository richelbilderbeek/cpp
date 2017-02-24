[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [ClearChart](CppClearChart.htm)
================================================

 

[ClearChart](CppClearChart.htm) is a [TChart](CppTChart.htm) [code
snippet](CppVclCodeSnippets.htm) to clear all series.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <Chart.hpp>   //From http://www.richelbilderbeek.nl/CppClearChart.htm void ClearChart(TChart * const c) {   assert(c); // c must be an initialized pointer   const int sz = c->SeriesCount();   for (int i=0; i!=sz; ++i)   {     c->Series[i]->Clear();   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
