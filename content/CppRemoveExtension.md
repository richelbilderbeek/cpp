
 

 

 

 

 

([C++](Cpp.md)) [RemoveExtension](CppRemoveExtension.md)
==========================================================

 

[std::string](CppStdString.md) [code snippet](CppCodeSnippets.md) to
remove a filename's extension.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //From http://www.richelbilderbeek.nl/CppRemoveExtension.htm const std::string RemoveExtension(const std::string& filename) {   const int dot_index = filename.rfind(".",filename.size());   assert(dot_index != -1 && "No dot found in filename");   return filename.substr(0,dot_index); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

