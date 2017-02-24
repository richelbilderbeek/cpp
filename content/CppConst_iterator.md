



 

 

 

 

 

([C++](Cpp.htm)) [const\_iterator](CppConst_iterator.htm)
=========================================================

 

[const\_iterator](CppConst_iterator.htm) is a common
[typedef](CppTypedef.htm) in [containers](CppContainer.htm) for an
[iterator](CppIterator.htm)-type that can only read the element it is
located at.

 

  --------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  int main() {   const std::vector<int> v(10,0);   const std::vector<int>::const_iterator i = v.begin(); }`
  --------------------------------------------------------------------------------------------------------------------------------

 

Closer inspection (of [vector.h](CppVectorH.htm) for example) yields the
following typedefs:

 

  --------------------------------------------------------------------------------------------------------
  ` typedef _TYPENAME __value_alloc_type::const_pointer const_iterator; typedef const T* const_pointer;`
  --------------------------------------------------------------------------------------------------------

 

This concludes that the following two [data types](CppDataType.htm) are
equivalent:

 

  ---------------------------------------------------------------------------
  ` std::vector<int>::const_iterator DataTypeOne; const int * DataTypeOne;`
  ---------------------------------------------------------------------------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
