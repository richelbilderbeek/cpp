[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::checked\_delete](CppChecked_delete.htm)
================================================================

 

[boost::checked\_delete](CppChecked_delete.htm) is a
compile-time-checked version of [delete](CppDelete.htm).

 

To cite from <http://www.boost.org/libs/utility/checked_delete.html>:

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` The C++ Standard allows, in 5.3.5/5, pointers to incomplete class types to be deleted with a delete-expression. When the class has a non-trivial destructor, or a class-specific operator delete, the behavior is undefined. Some compilers issue a warning when an incomplete type is deleted, but unfortunately, not all do, and programmers sometimes ignore or disable warnings.`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In other words, if you use a lot of [forward
declarations](CppForwardDeclaration.htm) you might choose to prefer
using [boost::checked\_delete](CppChecked_delete.htm).

 

Note that [std::auto\_ptr](CppAuto_ptr.htm) does not use a checked
[delete](CppDelete.htm). When you really need a checked delete, use
[boost::scoped\_ptr](CppScoped_ptr.htm) instead (but note that
[boost::scoped\_ptr](CppScoped_ptr.htm) has a slightly different
[interface](CppInterface.htm) then [std::auto\_ptr](CppAuto_ptr.htm)).

 

 

 

 

 

[Befriending](CppFriend.htm) a [class](CppClass.htm) with boost::checked\_delete
--------------------------------------------------------------------------------

 

When you [befriending](CppFriend.htm) a function template specialization
(like [boost::checked\_delete](CppChecked_delete.htm)), always
explicitly add at last the &lt;&gt; template syntax \[1\].

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   //MyClass's interface   private:   ~MyClass() { /* something */ }   friend void boost::checked_delete  (MyClass* x); //Bad  [1]   friend void boost::checked_delete<>(MyClass* x); //Good [1] };`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

External links
--------------

 

-   [Boost's page about
    boost::checked\_delete](http://www.boost.org/libs/utility/checked_delete.html)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 8: 'Befriending templates'.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
