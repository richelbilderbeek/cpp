



 

 

 

 

 

([C++](Cpp.htm)) [null](CppNull.htm)
====================================

 

[null](CppNull.htm) denotes a [pointer](CppPointer.htm) pointing
nowhere.

 

  ----------------------------------
  ` int main() {   int * p = 0; }`
  ----------------------------------

 

 

 

 

 

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

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [nullptr](CppNullptr.htm) to NULL and 0 \[1\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer nullptr to NULL
    and 0'

 

 

 

 

 





 



