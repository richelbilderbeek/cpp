



 

 

 

 

 

([C++](Cpp.md)) [std::mem\_fun](CppMem_fun.md)
================================================

 

An [adapter](CppAdapter.md) to be able to use
[for\_each](CppFor_each.md) on a [member
function](CppMemberFunction.md) of T stored in a
[container](CppContainer.md) as T\* (compare
[std::mem\_fun\_ref](CppMem_fun_ref.md), to use
[for\_each](CppFor_each.md) on a [member
function](CppMemberFunction.md) of T stored in a
[container](CppContainer.md) as T ).

 

Use a [container](CppContainer.md) of
[boost::shared\_ptr](CppShared_ptr.md)&lt;T&gt; instead.

 

 

 

 

 

Replacing a [for](CppFor.md) loop by algorithms using [std::mem\_fun](CppMem_fun.md)
--------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <vector>  struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget*>& v) {   const int sz = static_cast<int>(v.size());   for (int i=0; i!=sz; ++i)   {     v[i]->DoIt();   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>   struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<Widget*>& v) {   std::for_each(v.begin(),v.end(),std::mem_fun(&Widget::DoIt)); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 





 



