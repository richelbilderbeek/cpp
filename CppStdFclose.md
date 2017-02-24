[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::fclose](Cppstd::fclose.htm)
==================================================

 

[std::fclose](Cppstd::fclose.htm) is a [function](CppFunction.htm) used
in C-style [file I/O](CppFileIo.htm):

-   [std::fopen](CppFopen.htm): opens a file
-   [std::fputs](CppFputs.htm): write to file
-   [std::fseek](CppFseek.htm): change position to write
-   [std::fclose](CppFclose.htm): close file

 

Prefer using the [C++](Cpp.htm) file [stream](CppStream.htm)
[std::fstream](CppFstream.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdio> #include <boost/scoped_ptr.hpp>  //THIS PROGRAM CAUSES A RUNTIME CRASH //IT PROBABLY CORRUPTS SOME MEMORY //DO NOT RUN IT! int main() {   //Create a file to write to   const boost::scoped_ptr<FILE> my_file(std::fopen("my_file.txt","w"));   //Assume the file is created successfully   assert(my_file);   //Put text at the start of the file   std::fputs("Bilderbickel",my_file.get());   //Go to the 9th position   std::fseek(my_file.get(),9,SEEK_SET );   //Put text at the 9th position   std::fputs ("k",my_file.get());   //Close the file   std::fclose (my_file.get()); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
