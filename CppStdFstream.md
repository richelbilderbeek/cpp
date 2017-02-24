[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::fstream](CppFstream.htm)
===============================================

 

[std::fstream](CppFstream.htm) is an [STL](CppStl.htm)
[stream](CppStream.htm) for [file I/O](CppFileIo.htm).

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <fstream>  int main() {   {     //Create a new file (or remove its contents)     std::ofstream f;     f.open("my_file.txt");     f << "Hello";   }   {     //Append to file     std::ofstream f;     f.open("my_file.txt",std::ios::app);     f << " world\n";   } }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
