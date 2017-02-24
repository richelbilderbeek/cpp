
 

 

 

 

 

([C++](Cpp.md)) ['MyPolicy::MyMethod' is not a direct base class of 'MyClass&lt;MyPolicy&gt;'](CppCompileErrorMyPolicyMyMethodIsNotAdirectBaseClassOfMyClassMyPolicy.md)
==========================================================================================================================================================================

 

[Compile error](CppCompileError.md).

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------
  ` [C++ Error] UnitMain.cpp(4): E2507 'MyPolicy::MyMethod' is not a direct base class of 'MyClass<MyPolicy>'`
  --------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.md) 6.0

[Compiler](CppCompiler.md): Borland BCC32.EXE version 6.0.10.157

 

  ---------------------------------------------------------------------------------------------------
  ` template <typename MyPolicy> struct MyClass : public MyPolicy {   using MyPolicy::MyMethod; };`
  ---------------------------------------------------------------------------------------------------

 

This example is simplified from the example at [the WikiPedia page about
policy-based design](http://en.wikipedia.org/wiki/Policy-based_design).

 

The same code does compile using the IDE Dev-C++ version 4.9.9.2 its
default compiler.

 

 

 

 

 

Solution
--------

 

By removing the [using](CppUsing.md) statement, it will work.

 

  ------------------------------------------------------------------------
  ` template <typename MyPolicy> struct MyClass : public MyPolicy {  };`
  ------------------------------------------------------------------------

 

[Policies](CppPolicy.md) requires a compiler with highly robust support
for templates \[1\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [The WikiPedia page about policy-based
    design](http://en.wikipedia.org/wiki/Policy-based_design)

 

 

 

 

 

 

