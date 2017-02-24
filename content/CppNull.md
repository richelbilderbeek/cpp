
 

 

 

 

 

([C++](Cpp.md)) [null](CppNull.md)
====================================

 

[null](CppNull.md) denotes a [pointer](CppPointer.md) pointing
nowhere.

 

  ----------------------------------
  ` int main() {   int * p = 0; }`
  ----------------------------------

 

 

 

 

 

![Boost](PicBoost.png) [Smart pointers](CppSmartPointer.md) and [null](CppNull.md)
------------------------------------------------------------------------------------

 

[Boost](CppBoost.md) [smart pointers](CppSmartPointer.md) check for
[null](CppNull.md) themselves, so there is no need to check these to be
inititialized. In the example below a [member
variable](CppMemberVariable.md) of a [class](CppClass.md) is requested
from an unitialized [smart pointer](CppSmartPointer.md). The program
will [abort](CppAbort.md) and the [runtime error](CppRuntimeError.md)
will be shown.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  int main() {   {     boost::shared_ptr<Test> p;     p->m_x; //Good: uninitialized pointer detected by Boost   }   {     boost::scoped_ptr<Test> p;     p->m_x; //Good: uninitialized pointer detected by Boost   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

The code below shows that initializing a
[boost::shared\_ptr](CppShared_ptr.md) with [null](CppNull.md) will
not be easy, but even when it succeeds,
[boost::shared\_ptr](CppShared_ptr.md) will check itself for
[null](CppNull.md). A [boost::scoped\_ptr](CppScoped_ptr.md) can be
[null](CppNull.md), but will check itself for it as well.

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp> #include <boost/shared_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  Test * CreateNullPointer() { return 0; }  int main() {   {     boost::shared_ptr<Test> p;     //p.reset(0); //Good: does not compile: 0 is an integer     //p.reset(NULL); //Good: does not compile     p.reset(CreateNullPointer()); //Bad: tricked the compiler     //p->m_x; //Good: uninitialized pointer detected by Boost   }   {     boost::scoped_ptr<Test> p;     p.reset(0); //Valid: boost::scoped_ptr can be empty     p.reset(CreateNullPointer()); //Valid: boost::scoped_ptr can be empty     p->m_x; //Good: uninitialized pointer detected by Boost   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [nullptr](CppNullptr.md) to NULL and 0 \[1\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer nullptr to NULL
    and 0'

 

 

 

 

 

 

