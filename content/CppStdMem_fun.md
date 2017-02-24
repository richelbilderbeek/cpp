

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::mem\_fun](CppMem_fun.htm)
================================================

 

An [adapter](CppAdapter.htm) to be able to use
[for\_each](CppFor_each.htm) on a [member
function](CppMemberFunction.htm) of T stored in a
[container](CppContainer.htm) as T\* (compare
[std::mem\_fun\_ref](CppMem_fun_ref.htm), to use
[for\_each](CppFor_each.htm) on a [member
function](CppMemberFunction.htm) of T stored in a
[container](CppContainer.htm) as T ).

 

Use a [container](CppContainer.htm) of
[boost::shared\_ptr](CppShared_ptr.htm)&lt;T&gt; instead.

 

 

 

 

 

Replacing a [for](CppFor.htm) loop by algorithms using [std::mem\_fun](CppMem_fun.htm)
--------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget*>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget*>& v) {   std::for_each(v.begin(),v.end(),std::mem_fun(&Widget::DoIt)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
