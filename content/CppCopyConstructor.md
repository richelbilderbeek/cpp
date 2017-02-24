



 

 

 

 

 

([C++](Cpp.htm)) [copy constructor](CppCopyConstructor.htm)
===========================================================

 

A [copy constructor](CppCopyConstructor.htm) is the
[constructor](CppConstructor.htm) called when an
[instance](CppInstance.htm) is copied.

 

A [copy constructor](CppCopyConstructor.htm) is a
[constructor](CppConstructor.htm) in which the first
[argument](CppArgument.htm) is a [reference](CppReference.htm) to an
[object](CppObject.htm) that has the same type as the object to be
initialized.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <cstdlib>  struct MyClass {   //MyClass construtor   MyClass(const int x = 0) : m_x(x) {}   //MyClass copy constructor   MyClass(const MyClass& other) : m_x(other.m_x) {}   //MyClass copy asignment constructor   MyClass& operator=(const MyClass& rhs)   {     //Identity test, advised by Scott Meyers. Effective C++ (3rd edition). Item 11.     if (this == &rhs) return *this;      const_cast<int&>(m_x) = rhs.m_x;     return *this;   }   //MyClass data member   const int m_x; };  int main() {   const int x = std::rand();   MyClass a(x) ;     //Call of constructor   MyClass b(a) ;     //Call of copy constructor   MyClass c = b;     //Converted to call of copy constructor   MyClass d = c = b; //Call of copy assignment operator   assert(a.m_x == b.m_x);   assert(a.m_x == c.m_x);   assert(a.m_x == d.m_x); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. 4.3.11: 'A copy constructor is a constructor
    in which the first argument is a reference to an object that has the
    same type as the object to be initialized.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
