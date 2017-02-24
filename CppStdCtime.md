[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::ctime](CppStdCtime.htm)
==============================================

 

[std::ctime](CppStdCtime.htm) is an [STL](CppStl.htm)
[function](CppFunction.htm) to [convert](CppConvert.htm)
[std::time\_t](CppTime_t.htm) to [std::string](CppString.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <ctime> #include <iostream> #include <string>  int main() {   //Create a time struct   std::time_t t;    //Set the time struct to the current time   std::time(&t);    //Convert the time struct to std::string   const std::string s = std::ctime(&t);    //Put the time std::string on screen   std::cout << s << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------------------------
  ` Mon Aug  2 12:37:32 2010`
  -----------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
