
 

 

 

 

 

([C++](Cpp.md)) [boost::scoped\_ptr](CppScoped_ptr.md)
========================================================

 

[boost::scoped\_ptr](CppScoped_ptr.md) is a [smart
pointer](CppSmartPointer.md) that [deletes](CppDelete.md) the
[instance](CppInstance.md) it points to when going out of
[scope](CppScope.md).

 

[boost::scoped\_ptr](CppScoped_ptr.md) is similar to
[std::unique\_ptr](CppStdUnique_ptr.md) ([C++11](Cpp11.md)) and
[std::auto\_ptr](CppStdAuto_ptr.md) ([C++98](Cpp98.md), depreciated in
[C++11](Cpp11.md)).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp>   int main() {   const boost::scoped_ptr<MyClass> p(new MyClass);   p->doStuff(); //Hey, the same way of accessing the pointed instance!   //Done, boost::scoped_ptr deletes itself when going out of scope }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) [Smart pointers](CppSmartPointer.md) and [null](CppNull.md)
------------------------------------------------------------------------------------

 

[Boost](CppBoost.md) [smart pointers](CppSmartPointer.md) check for
[null](CppNull.md) themselves, so there is no need to check these to be
inititialized. In the example below a [member
variable](CppMemberVariable.md) of a [class](CppClass.md) is requested
from an unitialized [smart pointer](CppSmartPointer.md). The program
will [abort](CppAbort.md) and the [runtime error](CppRuntimeError.md)
will be shown.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  int main() {   boost::scoped_ptr<Test> p;   p->m_x; //Good: uninitialized pointer detected by Boost }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

A [boost::scoped\_ptr](CppScoped_ptr.md) can be [null](CppNull.md),
but will check itself for it:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  Test * CreateNullPointer() { return 0; }  int main() {   boost::scoped_ptr<Test> p;   p.reset(0); //Valid: boost::scoped_ptr can be empty   p.reset(CreateNullPointer()); //Valid: boost::scoped_ptr can be empty   p->m_x; //Good: uninitialized pointer detected by Boost }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. 2005. Item 13: 'Use objects to manage resources'
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. 2005. Item 17: 'Store newed objects in smart
    pointers in standalone statements'

 

 

 

 

 

 

