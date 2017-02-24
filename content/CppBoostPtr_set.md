

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::ptr\_set](CppPtr_set.htm)
==================================================

 

[boost::ptr\_set](CppPtr_set.htm) is a [container](CppContainer.htm) for
storing [pointers](CppPointer.htm) that behaves a
[std::set](CppSet.htm). [boost::ptr\_set](CppPtr_set.htm) will
[delete](CppDelete.htm) all stored [pointers](CppPointer.htm) when it
goes out of [scope](CppScope.htm).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/ptr_container/ptr_set.hpp>  struct MyClass {   MyClass(const int x = 0) : mX(x) {}   const int mX; };  bool operator<(const MyClass lhs, const MyClass rhs) {   return lhs.mX < rhs.mX; }  int main() {   boost::ptr_set<MyClass> s;   s.insert(new MyClass); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
