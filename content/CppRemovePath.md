
 

 

 

 

 

([C++](Cpp.md)) [RemovePath](CppRemovePath.md)
================================================

 

 

[RemovePath](CppRemovePath.md) is a [std::string](CppString.md) and
[file I/O](CppFileIo.md) [code snippet](CppCodeSnippets.md) to remove
a filename's path.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <cassert>  //From http://www.richelbilderbeek.nl/CppRemovePath.htm //Returns the filename without path const std::string RemovePath(const std::string& filename) {   const int sz = static_cast<int>(filename.size());   const int path_sz = filename.rfind("\\",filename.size());   if (path_sz == sz) return filename;   return filename.substr(path_sz + 1,sz - 1 - path_sz); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

