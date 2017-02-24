



 

 

 

 

 

([C++](Cpp.htm)) [FileToStringList](CppFileToStringList.htm)
============================================================

 

[FileToStringList](CppFileToStringList.htm) is a [file
I/O](CppFileIo.htm) [code snippet](CppCodeSnippets.htm) to obtain the
contents of a file as a TStringList.

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory>  std::auto_ptr<TStringList> FileToStringList(const std::string& filename) {   std::auto_ptr<TStringList> s(new TStringList);   s->LoadFromFile(fileName.c_str());   return s; }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



