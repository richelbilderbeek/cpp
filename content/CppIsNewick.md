



 

 

 

 

 

([C++](Cpp.htm)) [IsNewick](CppIsNewick.htm)
============================================

 

[IsNewick](CppIsNewick.htm) is a [Newick](CppNewick.htm) [code
snippets](CppCodeSnippets.htm) to determine if a
[std::string](CppString.htm) is a well-formed [Newick](CppNewick.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///IsNewick returns true if a std::string is a valid Newick ///and false otherwise. ///From http://www.richelbilderbeek.nl/CppIsNewick.htm bool IsNewick(const std::string& s) {   try   {     CheckNewick(s);   }   catch (...)   {     return false;   }   return true; }  ///IsNewick returns true if a std::vector<int> is a valid Newick ///and false otherwise. ///From http://www.richelbilderbeek.nl/CppIsNewick.htm bool IsNewick(const std::vector<int>& v) {   try   {     CheckNewick(v);   }   catch (...)   {     return false;   }   return true; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
