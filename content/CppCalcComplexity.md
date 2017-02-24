



 

 

 

 

 

([C++](Cpp.htm)) [CalcComplexity](CppCalcComplexity.htm)
========================================================

 

[CalcComplexity](CppCalcComplexity.htm) is a [Newick](CppNewick.htm)
[code snippets](CppCodeSnippets.htm) to calculate the complexity of a
[Newick](CppNewick.htm).

 

[CalcComplexity](CppCalcComplexity.htm) has two flavors:

1.  [STL](CppStl.htm) [CalcComplexity](CppCalcComplexity.htm): for
    complexities to around 2 billion
2.  [CLN](CppCln.htm) [CalcComplexity](CppCalcComplexity.htm): for
    nearly any complexity

 

 

 

 

[STL](CppStl.htm) [CalcComplexity](CppCalcComplexity.htm)
---------------------------------------------------------

 

If the complexity exceeds the maximum [integer](CppInt.htm) value, a
[std::range\_error](CppRange_error.htm) is [thrown](CppThrow.htm). Use
the [CLN](CppCln.htm) version if you do need to calculate higher
complexities.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///CalcComplexity calculates the complexity of a Newick. ///From http://www.richelbilderbeek.nl/CppCalcComplexity.htm int CalcComplexity(const std::vector<int>& v) {   assert(IsNewick(v));   int complexity = 1;   int n_frequencies = 0;   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     const int x = v[i];     if (x < 0) continue; //Ignore if x is not a number     ++n_frequencies;     complexity*=x;     //Check if complexity exceeded integer limit     if (complexity < 0)     {       throw         std::range_error("Newick complexity exceeds integer maximum value");     }   }   complexity*=n_frequencies;   //Check if complexity exceeded integer limit   if (complexity < 0)   {     throw       std::range_error("Newick complexity exceeds integer maximum value");   }   return complexity; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[CLN](CppCln.htm) [CalcComplexity](CppCalcComplexity.htm)
---------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///CalcComplexity calculates the complexity of a Newick. ///From http://www.richelbilderbeek.nl/CppCalcComplexity.htm const cln::cl_I CalcComplexity(const std::vector<int>& v) {   assert(IsNewick(v));   cln::cl_I complexity = 1;   int n_frequencies = 0;   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     const int x = v[i];     if (x < 0) continue; //Ignore if x is not a number     ++n_frequencies;     complexity*=cln::cl_I(x);   }   complexity*=cln::cl_I(n_frequencies);   return complexity; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
