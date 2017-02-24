
 

 

 

 

 

([C++](Cpp.md)) [std::noboolalpha](CppNoboolalpha.md)
=======================================================

 

[std::noboolalpha](CppNoboolalpha.md) is a stream manipulator to print
the [boolian](CppBool.md) values [false](CppFalse.md) and
[true](CppTrue.md) as '0' and '1' instead of 'false' and 'true'.

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

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

 

 

 

 

 

 

