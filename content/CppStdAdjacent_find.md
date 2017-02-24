



 

 

 

 

 

([C++](Cpp.htm)) [std::adjacent\_find](CppAdjacent_find.htm)
============================================================

 

[std::adjacent\_find](CppAdjacent_find.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to search a [container](CppContainer.htm)
for two adjacent identical values.

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 [GUI](CppGui.htm) Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

-   [Download the Qt Creator project
    'CppAdjacent\_find' (zip)](CppAdjacent_find.zip)

 

 

 

 

 

### main.cpp

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  int main() {   std::vector<int> v;   v.push_back(0);   v.push_back(1);   v.push_back(2);   v.push_back(2);   v.push_back(3);   v.push_back(4);    assert(std::adjacent_find(v.begin(),v.end())!=v.end());   assert(*std::adjacent_find(v.begin(),v.end())==2);    //Remove duplicate   v[2]=5;    assert(std::adjacent_find(v.begin(),v.end())==v.end()); } `
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



