
 

 

 

 

 

([C++](Cpp.md)) [boost::ptr\_set](CppPtr_set.md)
==================================================

 

[boost::ptr\_set](CppPtr_set.md) is a [container](CppContainer.md) for
storing [pointers](CppPointer.md) that behaves a
[std::set](CppSet.md). [boost::ptr\_set](CppPtr_set.md) will
[delete](CppDelete.md) all stored [pointers](CppPointer.md) when it
goes out of [scope](CppScope.md).

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/ptr_container/ptr_set.hpp>  struct MyClass {   MyClass(const int x = 0) : mX(x) {}   const int mX; };  bool operator<(const MyClass lhs, const MyClass rhs) {   return lhs.mX < rhs.mX; }  int main() {   boost::ptr_set<MyClass> s;   s.insert(new MyClass); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

