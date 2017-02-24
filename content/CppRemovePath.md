

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [RemovePath](CppRemovePath.htm)
================================================

 

 

[RemovePath](CppRemovePath.htm) is a [std::string](CppString.htm) and
[file I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm) to remove
a filename's path.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <string> #include <cassert>  //From http://www.richelbilderbeek.nl/CppRemovePath.htm //Returns the filename without path const std::string RemovePath(const std::string& filename) {   const int sz = static_cast<int>(filename.size());   const int path_sz = filename.rfind("\\",filename.size());   if (path_sz == sz) return filename;   return filename.substr(path_sz + 1,sz - 1 - path_sz); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
