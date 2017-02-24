[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::valarray](CppValarray.htm)
=================================================

 

[std::valarray](CppValarray.htm) is an [STL](CppStl.htm)
[container](CppContainer.htm) with built-in algorithm support.

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <functional> #include <iostream> #include <iterator> #include <valarray>  int main() {   std::valarray<int> v;   v.resize(3);   v[0] = 0;   v[1] = 1;   v[2] = 2;    //Add one to all elements   v+=1;    assert(v[0]==1);   assert(v[1]==2);   assert(v[2]==3);    //Multiply all elements by 2   v*=2;    assert(v[0]==2);   assert(v[1]==4);   assert(v[2]==6); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
