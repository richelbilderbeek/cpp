



 

 

 

 

 

([C++](Cpp.htm)) [std::binary\_search](CppBinary_search.htm)
============================================================

 

[std::binary\_search](CppBinary_search.htm) is an [STL](CppStl.htm)
[algorithm](CppAlgorithm.htm) to determine if a value is present in a
sorted [container](CppContainer.htm).

 

 

 

 

 

Project and source code
-----------------------

 

Operating system: [Ubuntu](http://www.ubuntu.com) 10.04 LTS Lucid Lynx

[IDE](CppIde.htm): [Qt Creator](CppQt.htm) 2.0.0

[Project type](CppQtProjectType.htm): Qt4 console Application

[Compiler](CppCompiler.htm): [G++](CppGpp.htm) 4.4.1

[Libraries](CppLibrary.htm) used:

-   [STL](CppStl.htm): from [GCC](CppGcc.htm), shipped with [Qt
    Creator](CppQt.htm) 2.0.0

 

-   [Download the Qt Creator project
    'CppBinary\_search' (zip)](CppBinary_search.zip)

 

 

 

 

 

### main.cpp

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <vector>  struct Gossip {   Gossip(const int any_i) : i(any_i) {}   private:   int i;   friend bool operator<(const Gossip& lhs, const Gossip& rhs); };  bool operator<(const Gossip& lhs, const Gossip& rhs) {   std::cout << "bool operator<(const Gossip& lhs, const Gossip& rhs)\n";   return lhs.i < rhs.i; }  int main() {   std::vector<Gossip> v;   for (int i=0; i!=100; ++i)   {     v.push_back(Gossip(i));   }    std::cout << "I will be found\n";   assert(std::binary_search(v.begin(),v.end(),Gossip(90))==true);   std::cout << "I will not be found\n";   assert(std::binary_search(v.begin(),v.end(),Gossip(100))==false); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` I will be found bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) I will not be found bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs) bool operator<(const Gossip& lhs, const Gossip& rhs)`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



