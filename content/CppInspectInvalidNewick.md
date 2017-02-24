



 

 

 

 

 

([C++](Cpp.md)) [InspectInvalidNewick](CppInspectInvalidNewick.md)
====================================================================

 

[InspectInvalidNewick](CppInspectInvalidNewick.md) is a
[Newick](CppNewick.md) [code snippets](CppCodeSnippets.md) to inspect
an invalid [Newick](CppNewick.md).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` ///InspectInvalidNewick writes the cause of the Newick invalidity ///to the std::ostream. ///From http://www.richelbilderbeek.nl/CppInspectInvalidNewick.htm void InspectInvalidNewick(std::ostream& os, const std::vector<int>& v) {   os << "InspectInvalidNewick on: "     << DumbNewickToString(v) << '\n';   try   {     CheckNewick(v);   }   catch (std::exception& e)   {     os << "Invalidity caused by: " << e.what() << '\n';   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



