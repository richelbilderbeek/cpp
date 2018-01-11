
 

 

 

 

 

([C++](Cpp.md)) [std::auto\_ptr](CppStdAuto_ptr.md)
==================================================

 

The [class template](CppClassTemplate.md)
[std::auto\_ptr](CppStdAuto_ptr.md) is deprecated \[5\]. The [class
template](CppClassTemplate.md) [std::unique\_ptr](CppStdUnique_ptr.md)
provides a better solution \[5\].

 

[std::auto\_ptr](CppStdAuto_ptr.md) is a [smart
pointer](CppSmartPointer.md) that [deletes](CppDelete.md) the
[instance](CppInstance.md) it points to when going out of
[scope](CppScope.md). It is supplied in the [STL](CppStl.md) [header
file](CppHeaderFile.md) [memory.h](CppMemoryH.md).

 

[std::auto\_ptr](CppStdAuto_ptr.md) helps to:

 

-   Manage [pointers](CppPointer.md) and preventing [memory
    leaks](CppMemoryLeak.md)
-   Clarifies the [pointer](CppPointer.md) management/ownership in
    [classes](CppClass.md)
-   Make code [exception safe](CppExceptionSafe.md)

 

Note: when you use a lot of [forward
declarations](CppForwardDeclaration.md), you might want to prefer
[boost::scoped\_ptr](CppScoped_ptr.md) as it uses
[boost::checked\_delete](CppChecked_delete.md). Also,
[boost::scoped\_ptr](CppScoped_ptr.md) cannot be copied, so you will
nearly ever be amazed by 'strange' behaviour.

 

 

 

 

 

Managing pointers and preventing memory leaks
---------------------------------------------

 

Standard pointer:

 

  ------------------------------------------------------------------------------------------------------------
  ` struct MyClass {};  int main() {   const MyClass const * p = new MyClass;   p->doStuff();   delete p; }`
  ------------------------------------------------------------------------------------------------------------

 

Using an auto\_ptr:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory>  struct MyClass {};   int main() {   const std::auto_ptr<MyClass> p(new MyClass);   p->doStuff(); //Hey, the same way of accessing the pointed instance!   //Done, std::auto_ptr deletes itself when going out of scope }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Use objects to manage resources (like dynamically allocated memory)\[2\]
and store newed objects in smart pointers in standalone statements
\[3\].

 

[std::auto\_ptr](CppStdAuto_ptr.md)'s does more then saving you a
[delete](CppDelete.md) statement. It ensures that the instance pointed
to is only pointed to once. This is done by a non-symettric copy: when
you pass a pointer from [std::auto\_ptr](CppStdAuto_ptr.md) to
[std::auto\_ptr](CppStdAuto_ptr.md), the original possessor gets zero.
This is demonstrated below:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <memory> #include <cassert>  struct MyClass {};  int main() {   const std::auto_ptr<MyClass> p1(new MyClass);   const std::auto_ptr<MyClass> p2;     assert(p1 != 0);   assert(p2 == 0);     p2 = p1; //Copies the MyClass*     assert(p1 == 0);   assert(p2 != 0); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

To get a copy to the pointed instance use the
std::auto\_ptr&lt;T&gt;::get [member function](CppMemberFunction.md):

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <cassert> #include <memory>  struct MyClass {};  int main() {   const std::auto_ptr<MyClass> p1(new MyClass);   const MyClass * const p2 = pClass.get();     assert(p1 !=0);   assert(p2 !=0); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Pointer management
------------------

 

Also, using a [std::auto\_ptr](CppStdAuto_ptr.md), it gets clear which
[class](CppClass.md) manages the [deletion](CppDelete.md) of the
pointed [instance](CppInstance.md).

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` class Something{};   struct MyClass {   //Ownership remains at MyClass (*)   const Something * const GetSomethingCopy() const   {     return mpSomething.get();   }     //Ownership transferred to caller   const std::auto_ptr<Something> GetSomething() //Cannot be a const-method!   {     return mpSomething;   }     private:    std::auto_ptr<Something> mpSomething; };  // (*) Note that despite the constness, the pointer can be deleted by the caller, // without taking proper precautions (See Exercise #1: a foolproof function)`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

If the [instance](CppInstance.md) pointed to needs to be give to
another [class](CppClass.md), then MyClass::GetSomething is left with
an empty (that is: **0**) pSomething.

 

 

 

 

 

Make code [exception safe](CppExceptionSafe.md)
------------------------------------------------

 

When you create a new [instance](CppInstance.md) dynamically in a
certain function using a plain pointer, in the end of this function you
call [delete](CppDelete.md). But when in the middle an
[exception](CppException.md) is [thrown](CppThrow.md), this
[delete](CppDelete.md) is not called anymore! When using an
[auto\_ptr](CppStdAuto_ptr.md), the instance DOES get deleted. This is
because [auto\_ptr](CppStdAuto_ptr.md)'s [delete](CppDelete.md) their
[instances](CppInstance.md) when they go out of [scope](CppScope.md).

 

 

 

 

 

Note, warnings, curiosities
---------------------------

 

 

 

 

 

### Do not create an [array](CppArray.md) dynamically using a std::auto\_ptr

 

This will give you a [memory leak](CppMemoryLeak.md), as a
std::auto\_ptr calls [delete](CppDelete.md), instead of
[delete\[\]](CppDeleteArray.md). As advised by \[1\], you should prefer
a [std::vector](CppStdVector.md) over an array. But if you really want to
use a [smart pointer](CppSmartPointer.md), use a
[boost::scoped\_array](CppScoped_array.md).

 

 

 

 

 

### Do not put [std::auto\_ptr](CppStdAuto_ptr.md)'s in a [std::vector](CppStdVector.md) \[4\]

 

A copy of a [std::auto\_ptr](CppStdAuto_ptr.md) does not copy the memory
address pointed to. Therefore, when using e.g. a sorting algorithm, some
pointed [instances](CppInstance.md) might get [deleted](CppDelete.md)!
Instead, use a [boost::shared\_ptr](CppShared_ptr.md).

 

 

 

 

 

### Resetting a[std::auto\_ptr](CppStdAuto_ptr.md)

 

Resetting a [std::auto\_ptr](CppStdAuto_ptr.md) first constructs a new
[instance](CppInstance.md) of the [class](CppClass.md) before
[deleting](CppDelete.md) the old [instance](CppInstance.md). This is
demonstrated by the code below:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include <memory>   struct Resetter {   Resetter() { std::cout << "Constructor" << std::endl; }   ~Resetter() { std::cout << "Destructor" << std::endl; } };   int main() {   std::auto_ptr<Resetter> pReset(new Resetter);   pReset.reset(new Resetter); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This gives the following output:

 

  --------------------------------------------------
  ` Constructor Constructor Destructor Destructor`
  --------------------------------------------------

 

The reason for this behavior is I guess- exception safety: if the
allocation of the new resources fail, then the old resources are not yet
released.

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  Herb Sutter and Andrei Alexandrescu. C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. 2004.
    Chapter 77: 'Use vector and string instead of arrays'
2.  Scott Meyers. Effective C++ (3rd edition). ISBN:0-321-33487-6. 2005.
    Item 13: 'Use objects to manage resources'
3.  Scott Meyers. Effective C++ (3rd edition). ISBN:0-321-33487-6. 2005.
    Item 17: 'Store newed objects in smart pointers in standalone
    statements'
4.  Scott Meyers. Effective STL. ISBN:0-201-74962-9. 2001. Item 8:
    'Never create containers of auto\_ptr's'
5.  Working Draft, Standard for Programming Language C++.
    2014-08-22. N3936. Paragraph D.10. 'The class template auto\_ptr is
    deprecated \[Note: the class template unique\_ptr provides a better
    solution -end note\]'

 

 

 

 

 

 

