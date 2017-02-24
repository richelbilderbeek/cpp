[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::clog](CppClog.htm)
=========================================

 

[std::clog](CppClog.htm) (abbreviation of 'character log stream') is a
[stream](CppStream.htm) for logging information.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   std::cout << "Start of program\n";   std::clog << "Log message: now in middle of program\n";   std::cout << "End of program\n"; }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ------------------------------------
  ` Start of program End of program`
  ------------------------------------

 

[Qt Creator](CppQtCreator.htm) [IDE](CppIde.htm) output (while in
debugging mode):

 

  --------------------------------------------------------------------------
  ` Log message: now in middle of program Start of program End of program`
  --------------------------------------------------------------------------

 

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
