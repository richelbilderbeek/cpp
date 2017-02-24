
 

 

 

 

 

([C++](Cpp.md)) [FileToStringList](CppFileToStringList.md)
============================================================

 

[FileToStringList](CppFileToStringList.md) is a [file
I/O](CppFileIo.md) [code snippet](CppCodeSnippets.md) to obtain the
contents of a file as a TStringList.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory>  std::auto_ptr<TStringList> FileToStringList(const std::string& filename) {   std::auto_ptr<TStringList> s(new TStringList);   s->LoadFromFile(fileName.c_str());   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

