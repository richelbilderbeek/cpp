
 

 

 

 

 

([C++](Cpp.md)) [boost::checked\_delete](CppChecked_delete.md)
================================================================

 

[boost::checked\_delete](CppChecked_delete.md) is a
compile-time-checked version of [delete](CppDelete.md).

 

To cite from <http://www.boost.org/libs/utility/checked_delete.html>:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` The C++ Standard allows, in 5.3.5/5, pointers to incomplete class types to be deleted with a delete-expression. When the class has a non-trivial destructor, or a class-specific operator delete, the behavior is undefined. Some compilers issue a warning when an incomplete type is deleted, but unfortunately, not all do, and programmers sometimes ignore or disable warnings.`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In other words, if you use a lot of [forward
declarations](CppForwardDeclaration.md) you might choose to prefer
using [boost::checked\_delete](CppChecked_delete.md).

 

Note that [std::auto\_ptr](CppAuto_ptr.md) does not use a checked
[delete](CppDelete.md). When you really need a checked delete, use
[boost::scoped\_ptr](CppScoped_ptr.md) instead (but note that
[boost::scoped\_ptr](CppScoped_ptr.md) has a slightly different
[interface](CppInterface.md) then [std::auto\_ptr](CppAuto_ptr.md)).

 

 

 

 

 

[Befriending](CppFriend.md) a [class](CppClass.md) with boost::checked\_delete
--------------------------------------------------------------------------------

 

When you [befriending](CppFriend.md) a function template specialization
(like [boost::checked\_delete](CppChecked_delete.md)), always
explicitly add at last the &lt;&gt; template syntax \[1\].

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //MyClass's interface   private:   ~MyClass() { /* something */ }   friend void boost::checked_delete  (MyClass* x); //Bad  [1]   friend void boost::checked_delete<>(MyClass* x); //Good [1] };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Boost's page about
    boost::checked\_delete](http://www.boost.org/libs/utility/checked_delete.html)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 8: 'Befriending templates'.

 

 

 

 

 

 

