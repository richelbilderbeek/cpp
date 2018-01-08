
 

 

 

 

 

([C++](Cpp.md)) [std::cerr](CppStdCerr.md)
=========================================

 

[std::cerr](CppStdCerr.md) (abbreviation of 'character error stream') is a
[stream](CppStream.md) for error information.

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Start of program\n";   std::cerr << "Error message: now in middle of program\n";   std::cout << "End of program\n"; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------
  ` Start of program End of program`
  ------------------------------------

 

[Qt Creator](CppQtCreator.md) [IDE](CppIde.md) output (while in
debugging mode):

 

  ----------------------------------------------------------------------------
  ` Error message: now in middle of program Start of program End of program`
  ----------------------------------------------------------------------------

 

 

 

 

 

 

 

