
 

 

 

 

 

([C++](Cpp.md)) [std::not1](CppNot1.md)
=========================================

 

[std::not1](CppNot1.md) is an [STL](CppStl.md)
[adapter](CppAdapter.md) to negate a [predicate](CppPredicate.md)
derived from [std::unary\_function](CppUnary_function.md). To negate a
[predicate](CppPredicate.md) derived from
[std::binary\_function](CppBinary_function.md), use
[std::not2](CppNot2.md).

 

 

 

 

 

Example
-------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 Console Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <functional> #include <vector>  struct IsGood : std::unary_function<int,bool> {   bool operator() (const int x) const   {     return (x == 42);   } };  int main () {   std::vector<int> v;   for (int i=0; i!=100; ++i) { v.push_back(i); }   //Count the good ones   assert(std::count_if(v.begin(),v.end(),IsGood())==1);   //Count the bad (not-good) ones   assert(std::count_if(v.begin(),v.end(),std::not1(IsGood()))==99); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the C++ Qt Creator project of this
    example (zip)](CppNot1.zip)

 

 

 

 

 

External links
--------------

 

-   [Cplusplus.com page about
    std::not1](http://www.cplusplus.com/reference/std/functional/not1)

 

 

 

 

 

 

