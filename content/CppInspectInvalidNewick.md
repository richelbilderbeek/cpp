

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [InspectInvalidNewick](CppInspectInvalidNewick.htm)
====================================================================

 

[InspectInvalidNewick](CppInspectInvalidNewick.htm) is a
[Newick](CppNewick.htm) [code snippets](CppCodeSnippets.htm) to inspect
an invalid [Newick](CppNewick.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///InspectInvalidNewick writes the cause of the Newick invalidity ///to the std::ostream. ///From http://www.richelbilderbeek.nl/CppInspectInvalidNewick.htm void InspectInvalidNewick(std::ostream& os, const std::vector<int>& v) {   os << "InspectInvalidNewick on: "     << DumbNewickToString(v) << '\n';   try   {     CheckNewick(v);   }   catch (std::exception& e)   {     os << "Invalidity caused by: " << e.what() << '\n';   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
