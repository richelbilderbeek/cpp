

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [RunOtherProgram](CppRunOtherProgram.htm)
==========================================================

 

If you want your program to run another program and use that program's
output. The code below executes the MS-DOS command 'dir' (similar to
Linux 'ls') and puts the output of this command in a std::vector. Then
it displays the output on screen.

 

Assumes you have already declared the [FileExists](CppFileExists.htm)
and [FileToVector](CppFileToVector.htm) functions.

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib> #include <fstream> #include <iostream> #include <string> #include <vector>   int main() {   //From http://www.richelbilderbeek.nl/CppRunOtherProgram.htm   //Silenty executes 'dir' and writes the output to the file "temp.txt"   std::system("dir > temp.txt");    //Read "temp.txt" in a std::vector<std::string>   const std::vector<std::string> file(FileToVector("temp.txt"));    //Display the file   typedef std::vector<std::string>::const_iterator Iterator;   for (Iterator i = file.begin(); i!=file.end(); ++i)   {     std::cout << *i << std::endl;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
