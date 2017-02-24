



 

 

 

 

 

([C++](Cpp.md)) [CalcComplexity](CppCalcComplexity.md)
========================================================

 

[CalcComplexity](CppCalcComplexity.md) is a [Newick](CppNewick.md)
[code snippets](CppCodeSnippets.md) to calculate the complexity of a
[Newick](CppNewick.md).

 

[CalcComplexity](CppCalcComplexity.md) has two flavors:

1.  [STL](CppStl.md) [CalcComplexity](CppCalcComplexity.md): for
    complexities to around 2 billion
2.  [CLN](CppCln.md) [CalcComplexity](CppCalcComplexity.md): for
    nearly any complexity

 

 

 

 

[STL](CppStl.md) [CalcComplexity](CppCalcComplexity.md)
---------------------------------------------------------

 

If the complexity exceeds the maximum [integer](CppInt.md) value, a
[std::range\_error](CppRange_error.md) is [thrown](CppThrow.md). Use
the [CLN](CppCln.md) version if you do need to calculate higher
complexities.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///CalcComplexity calculates the complexity of a Newick. ///From http://www.richelbilderbeek.nl/CppCalcComplexity.htm int CalcComplexity(const std::vector<int>& v) {   assert(IsNewick(v));   int complexity = 1;   int n_frequencies = 0;   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     const int x = v[i];     if (x < 0) continue; //Ignore if x is not a number     ++n_frequencies;     complexity*=x;     //Check if complexity exceeded integer limit     if (complexity < 0)     {       throw         std::range_error("Newick complexity exceeds integer maximum value");     }   }   complexity*=n_frequencies;   //Check if complexity exceeded integer limit   if (complexity < 0)   {     throw       std::range_error("Newick complexity exceeds integer maximum value");   }   return complexity; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[CLN](CppCln.md) [CalcComplexity](CppCalcComplexity.md)
---------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///CalcComplexity calculates the complexity of a Newick. ///From http://www.richelbilderbeek.nl/CppCalcComplexity.htm const cln::cl_I CalcComplexity(const std::vector<int>& v) {   assert(IsNewick(v));   cln::cl_I complexity = 1;   int n_frequencies = 0;   const int sz = v.size();   for (int i=0; i!=sz; ++i)   {     const int x = v[i];     if (x < 0) continue; //Ignore if x is not a number     ++n_frequencies;     complexity*=cln::cl_I(x);   }   complexity*=cln::cl_I(n_frequencies);   return complexity; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



