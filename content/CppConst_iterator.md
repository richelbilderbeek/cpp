
 

 

 

 

 

([C++](Cpp.md)) [const\_iterator](CppConst_iterator.md)
=========================================================

 

[const\_iterator](CppConst_iterator.md) is a common
[typedef](CppTypedef.md) in [containers](CppContainer.md) for an
[iterator](CppIterator.md)-type that can only read the element it is
located at.

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int main() {   const std::vector<int> v(10,0);   const std::vector<int>::const_iterator i = v.begin(); }`
  --------------------------------------------------------------------------------------------------------------------------------

 

Closer inspection (of [vector.h](CppVectorH.md) for example) yields the
following typedefs:

 

  --------------------------------------------------------------------------------------------------------
  ` typedef _TYPENAME __value_alloc_type::const_pointer const_iterator; typedef const T* const_pointer;`
  --------------------------------------------------------------------------------------------------------

 

This concludes that the following two [data types](CppDataType.md) are
equivalent:

 

  ---------------------------------------------------------------------------
  ` std::vector<int>::const_iterator DataTypeOne; const int * DataTypeOne;`
  ---------------------------------------------------------------------------

 

 

 

 

 

 

