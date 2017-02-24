



 

 

 

 

 

([C++](Cpp.htm)) [NULL](CppNULL.htm)
====================================

 

[NULL](CppNULL.htm) is a [\#defined](CppDefine.htm) constant for a
[pointer](CppPointer.htm) pointing nowhere. Prefer using a zero or
[nullptr](CppNullptr.htm) \[1\].

 

  -----------------------------------------------------------------------------------
  ` int main() {   int * p = NULL; //Not preferred   int * q =    0; //Preferred }`
  -----------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) [Smart pointers](CppSmartPointer.htm) and [null](CppNull.htm)
------------------------------------------------------------------------------------

 

[Boost](CppBoost.htm) [smart pointers](CppSmartPointer.htm) check for
[null](CppNull.htm) themselves, so there is no need to check these to be
inititialized. In the example below a [member
variable](CppMemberVariable.htm) of a [class](CppClass.htm) is requested
from an unitialized [smart pointer](CppSmartPointer.htm). The program
will [abort](CppAbort.htm) and the [runtime error](CppRuntimeError.htm)
will be shown.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  int main() {   {     boost::shared_ptr<Test> p;     p->m_x; //Good: uninitialized pointer detected by Boost   }   {     boost::scoped_ptr<Test> p;     p->m_x; //Good: uninitialized pointer detected by Boost   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The code below shows that initializing a
[boost::shared\_ptr](CppShared_ptr.htm) with [null](CppNull.htm) will
not be easy, but even when it succeeds,
[boost::shared\_ptr](CppShared_ptr.htm) will check itself for
[null](CppNull.htm). A [boost::scoped\_ptr](CppScoped_ptr.htm) can be
[null](CppNull.htm), but will check itself for it as well.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  Test * CreateNullPointer() { return 0; }  int main() {   {     boost::shared_ptr<Test> p;     //p.reset(0); //Good: does not compile: 0 is an integer     //p.reset(NULL); //Good: does not compile     p.reset(CreateNullPointer()); //Bad: tricked the compiler     //p->m_x; //Good: uninitialized pointer detected by Boost   }   {     boost::scoped_ptr<Test> p;     p.reset(0); //Valid: boost::scoped_ptr can be empty     p.reset(CreateNullPointer()); //Valid: boost::scoped_ptr can be empty     p->m_x; //Good: uninitialized pointer detected by Boost   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 175: 'A pointer shall not be compared
    to NULL or be assigned NULL; use plain 0 instead.'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
