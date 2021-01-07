# ([C++](Cpp.md)) [FileToVector](CppFileToVector.md)

![STL](PicStl.png)![Qt
Creator](PicQtCreator.png)![Lubuntu](PicLubuntu.png)

[File I/O](CppFileIo.md) is a [code snippet](CppCodeSnippets.md) to
[convert](CppConvert.md) a file to a
[std::vector](CppStdVector.md)&lt;[std::string](CppStdString.md)&gt;.
[File I/O](CppFileIo.md) you have already defined the
[FileExists](CppFileExists.md) function.


```
#include <cassert> 
#include <fstream> 
#include <vector>  

///Determines if a filename is a regular file 
///From http://www.richelbilderbeek.nl/CppIsRegularFile.htm 
bool IsRegularFile(const std::string& filename) 
{ 
  std::fstream f; 
  f.open(filename.c_str(),std::ios::in); 
  return f.is_open(); 
}

///FileToVector reads a file and converts it to a std::vector<std::string> 
///From http://www.richelbilderbeek.nl/CppFileToVector.htm 
std::vector<std::string> FileToVector(const std::string& filename) 
{ 
  assert(IsRegularFile(filename)); 
  std::vector<std::string> v; 
  std::ifstream in(filename.c_str()); 
  for (int i=0; !in.eof(); ++i) 
  {
    std::string s; 
    std::getline(in,s); 
    v.push_back(s); 
  } 
  return v; 
}  

#include <iostream> 
#include <iterator>  

int main() 
{ 
  //Read the file 
  const auto v = FileToVector("../CppFileToVector/main.cpp");  
  //Prints the file contents 
  std::copy( 
    std::begin(v),std::end(v), 
    std::ostream_iterator<std::string>(std::cout,"\n") 
  ); 
}
```
