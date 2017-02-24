
 

 

 

 

 

([C++](Cpp.md)) [std::fclose](Cppstd::fclose.md)
==================================================

 

[std::fclose](Cppstd::fclose.md) is a [function](CppFunction.md) used
in C-style [file I/O](CppFileIo.md):

-   [std::fopen](CppFopen.md): opens a file
-   [std::fputs](CppFputs.md): write to file
-   [std::fseek](CppFseek.md): change position to write
-   [std::fclose](CppFclose.md): close file

 

Prefer using the [C++](Cpp.md) file [stream](CppStream.md)
[std::fstream](CppFstream.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdio> #include <boost/scoped_ptr.hpp>  //THIS PROGRAM CAUSES A RUNTIME CRASH //IT PROBABLY CORRUPTS SOME MEMORY //DO NOT RUN IT! int main() {   //Create a file to write to   const boost::scoped_ptr<FILE> my_file(std::fopen("my_file.txt","w"));   //Assume the file is created successfully   assert(my_file);   //Put text at the start of the file   std::fputs("Bilderbickel",my_file.get());   //Go to the 9th position   std::fseek(my_file.get(),9,SEEK_SET );   //Put text at the 9th position   std::fputs ("k",my_file.get());   //Close the file   std::fclose (my_file.get()); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

