



 

 

 

 

 

([C++](Cpp.htm)) [boost::scoped\_ptr](CppScoped_ptr.htm)
========================================================

 

[boost::scoped\_ptr](CppScoped_ptr.htm) is a [smart
pointer](CppSmartPointer.htm) that [deletes](CppDelete.htm) the
[instance](CppInstance.htm) it points to when going out of
[scope](CppScope.htm).

 

[boost::scoped\_ptr](CppScoped_ptr.htm) is similar to
[std::unique\_ptr](CppUnique_ptr.htm) ([C++11](Cpp11.htm)) and
[std::auto\_ptr](CppAuto_ptr.htm) ([C++98](Cpp98.htm), depreciated in
[C++11](Cpp11.htm)).

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp>   int main() {   const boost::scoped_ptr<MyClass> p(new MyClass);   p->doStuff(); //Hey, the same way of accessing the pointed instance!   //Done, boost::scoped_ptr deletes itself when going out of scope }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![Boost](PicBoost.png) [Smart pointers](CppSmartPointer.htm) and [null](CppNull.htm)
------------------------------------------------------------------------------------

 

[Boost](CppBoost.htm) [smart pointers](CppSmartPointer.htm) check for
[null](CppNull.htm) themselves, so there is no need to check these to be
inititialized. In the example below a [member
variable](CppMemberVariable.htm) of a [class](CppClass.htm) is requested
from an unitialized [smart pointer](CppSmartPointer.htm). The program
will [abort](CppAbort.htm) and the [runtime error](CppRuntimeError.htm)
will be shown.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  int main() {   boost::scoped_ptr<Test> p;   p->m_x; //Good: uninitialized pointer detected by Boost }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

A [boost::scoped\_ptr](CppScoped_ptr.htm) can be [null](CppNull.htm),
but will check itself for it:

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <boost/scoped_ptr.hpp>  struct Test {   Test(const int x) : m_x(x) {}   const int m_x; };  Test * CreateNullPointer() { return 0; }  int main() {   boost::scoped_ptr<Test> p;   p.reset(0); //Valid: boost::scoped_ptr can be empty   p.reset(CreateNullPointer()); //Valid: boost::scoped_ptr can be empty   p->m_x; //Good: uninitialized pointer detected by Boost }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. 2005. Item 13: 'Use objects to manage resources'
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN:0-321-33487-6. 2005. Item 17: 'Store newed objects in smart
    pointers in standalone statements'

 

 

 

 

 





 



