



 

 

 

 

 

([C++](Cpp.htm)) [CompressNewick](CppCompressNewick.htm)
========================================================

 

[CompressNewick](CppCompressNewick.htm) is a [Newick](CppNewick.htm)
[code snippets](CppCodeSnippets.htm) to sort binary-tree
[Newick](CppNewick.htm) in such a way that all opening brackets are at
the right. It is only usefull when the [Newick](CppNewick.htm) only has
one leaf, like '(((A,B),C),D)'.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///CompressNewick compress a binary-tree Newick ///by removing all brackets. Note that the ///Newick must already be sorted by SortNewick, ///otherwise the Newick structure becomes unknown ///From http://www.richelbilderbeek.nl/CppCompressNewick.htm std::vector<int> CompressNewick(const std::vector<int>& newick) {   std::vector<int> v;   Copy_if(     newick.begin(),     newick.end(),     std::back_inserter(v),     std::bind2nd(std::greater<int>(),0));   return v; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



