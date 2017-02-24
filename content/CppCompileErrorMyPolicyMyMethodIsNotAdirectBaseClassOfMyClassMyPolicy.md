[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) ['MyPolicy::MyMethod' is not a direct base class of 'MyClass&lt;MyPolicy&gt;'](CppCompileErrorMyPolicyMyMethodIsNotAdirectBaseClassOfMyClassMyPolicy.htm)
==========================================================================================================================================================================

 

[Compile error](CppCompileError.htm).

 

Full error message
------------------

 

  --------------------------------------------------------------------------------------------------------------
  ` [C++ Error] UnitMain.cpp(4): E2507 'MyPolicy::MyMethod' is not a direct base class of 'MyClass<MyPolicy>'`
  --------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Cause
-----

 

IDE: [C++ Builder](CppBuilder.htm) 6.0

[Compiler](CppCompiler.htm): Borland BCC32.EXE version 6.0.10.157

 

  ---------------------------------------------------------------------------------------------------
  ` template <typename MyPolicy> struct MyClass : public MyPolicy {   using MyPolicy::MyMethod; };`
  ---------------------------------------------------------------------------------------------------

 

This example is simplified from the example at [the WikiPedia page about
policy-based design](http://en.wikipedia.org/wiki/Policy-based_design).

 

The same code does compile using the IDE Dev-C++ version 4.9.9.2 its
default compiler.

 

 

 

 

 

Solution
--------

 

By removing the [using](CppUsing.htm) statement, it will work.

 

  ------------------------------------------------------------------------
  ` template <typename MyPolicy> struct MyClass : public MyPolicy {  };`
  ------------------------------------------------------------------------

 

[Policies](CppPolicy.htm) requires a compiler with highly robust support
for templates \[1\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [The WikiPedia page about policy-based
    design](http://en.wikipedia.org/wiki/Policy-based_design)

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
