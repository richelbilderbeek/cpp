

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::any](CppAny.htm)
=========================================

 

[boost::any](CppAny.htm) is a [Boost](CppBoost.htm)
[container](CppContainer.htm) for type-safe storage of any [data
type](CppDataType.htm).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 Console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [Boost](CppBoost.htm): version 1.40
-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

-   [Download the Qt Creator project 'CppAny' (zip)](CppAny.zip)

 

 

 

 

 

### main.cpp

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <iostream> #include <string> #include <vector> #include <boost/any.hpp>   int main() {   std::vector<boost::any> v;   v.push_back(boost::any(123));   v.push_back(boost::any(123.456));   v.push_back(boost::any(std::string("123")));   std::random_shuffle(v.begin(),v.end());    const std::size_t sz = v.size();    for (std::size_t i = 0; i!=sz; ++i)   {     if (v[i].type() == typeid(int))     {       std::cout << "int found at index '" << i         << "': " << boost::any_cast<int>(v[i]) << '\n';     }     else if (v[i].type() == typeid(double))     {       std::cout << "double found at index '" << i         << "': " << boost::any_cast<double>(v[i]) << '\n';     }     else if (v[i].type() == typeid(std::string))     {       std::cout << "std::string found at index '" << i         << "': " << boost::any_cast<std::string>(v[i]) << '\n';     }   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -------------------------------------------------------------------------------------------------------
  ` int found at index '0': 123 std::string found at index '1': 123 double found at index '2': 123.456`
  -------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
