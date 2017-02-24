

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::boolalpha](CppBoolalpha.htm)
===================================================

 

[std::boolalpha](CppBoolalpha.htm) is a stream manipulator to print the
[boolian](CppBool.htm) values [false](CppFalse.htm) and
[true](CppTrue.htm) as 'false' and 'true' instead of '0' and '1'.

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

-   [Download the Qt Creator project
    'CppBoolalpha' (zip)](CppBoolalpha.zip)

 

 

 

 

 

### main.cpp

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iomanip> #include <iostream>   int main() {   const bool f = false;   const bool t = true;    std::cout     << "False: " << f << '\n'     << "True: "  << t << '\n';    std::cout << std::boolalpha;    std::cout     << "False: " << f << '\n'     << "True: "  << t << '\n'; }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  ---------------------------------------------
  ` False: 0 True: 1 False: false True: true`
  ---------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
