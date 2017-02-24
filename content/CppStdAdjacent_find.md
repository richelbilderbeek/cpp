
 

 

 

 

 

([C++](Cpp.md)) [std::adjacent\_find](CppAdjacent_find.md)
============================================================

 

[std::adjacent\_find](CppAdjacent_find.md) is an [STL](CppStl.md)
[algorithm](CppAlgorithm.md) to search a [container](CppContainer.md)
for two adjacent identical values.

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.md): [Qt Creator](CppQt.md) 2.0.0

[Project type](CppQtProjectType.md): Qt4 [GUI](CppGui.md) Application

[Compiler](CppCompiler.md): [G++](CppGpp.md) 4.4.1

[Libraries](CppLibrary.md) used:

-   [STL](CppStl.md): from [GCC](CppGcc.md), shipped with [Qt
    Creator](CppQt.md) 2.0.0

 

-   [Download the Qt Creator project
    'CppAdjacent\_find' (zip)](CppAdjacent_find.zip)

 

 

 

 

 

### main.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(2);   v.push_back(3);   v.push_back(4);    assert(std::adjacent_find(v.begin(),v.end())!=v.end());   assert(*std::adjacent_find(v.begin(),v.end())==2);    //Remove duplicate   v[2]=5;    assert(std::adjacent_find(v.begin(),v.end())==v.end()); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

