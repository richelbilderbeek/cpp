



 

 

 

 

 

([C++](Cpp.htm)) [IsBinaryNewick](CppIsBinaryNewick.htm)
========================================================

 

[IsBinaryNewick](CppIsBinaryNewick.htm) is a [Newick](CppNewick.htm)
[code snippet](CppCodeSnippets.htm) to determine if the
[Newick](CppNewick.htm) is a binary tree.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  `  ///IsBinaryNewick checks if a Newick is a binary tree, ///that is: each node splits in two (not more) branches ///From http://www.richelbilderbeek.nl/CppIsBinaryNewick.htm bool IsBinaryNewick(const std::vector<int>& v) {   assert(IsNewick(v));   const int sz = boost::numeric_cast<int>(v.size());   if (sz == 3) return false;   if (sz == 4) return true;    //'sz - 3' because i looks forward 2 indices and last index is a ')'   for (int i=1; i!=sz-3; ++i)   {     if (v[i]>0 && v[i+1]>0 && v[i+2]>0) return false;   }   return true; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
