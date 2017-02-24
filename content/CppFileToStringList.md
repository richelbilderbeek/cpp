[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [FileToStringList](CppFileToStringList.htm)
============================================================

 

[FileToStringList](CppFileToStringList.htm) is a [file
I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm) to obtain the
contents of a file as a TStringList.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory>  std::auto_ptr<TStringList> FileToStringList(const std::string& filename) {   std::auto_ptr<TStringList> s(new TStringList);   s->LoadFromFile(fileName.c_str());   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
