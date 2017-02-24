
 

 

 

 

 

([C++](Cpp.md)) [boost::mem\_fn](CppMem_fn.md)
================================================

 

[boost::mem\_fn](CppMem_fn.md) is an [adapter](CppAdapter.md),
intended to be more flexible than [STL](CppStl.md)
[adapters](CppAdapter.md) like [std::mem\_fun](CppMem_fun.md) and
[std::mem\_fun\_ref](CppMem_fun_ref.md).

 

[boost::mem\_fn](CppMem_fn.md) can often replace both
[std::mem\_fun](CppMem_fun.md) and
[std::mem\_fun\_ref](CppMem_fun_ref.md).

 

 

 

 

 

Example
-------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector> #include <boost/shared_ptr.hpp>  struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<boost::shared_ptr<Widget> >& v) {   std::for_each(v.begin(),v.end(),boost::mem_fn(&Widget::DoIt)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

 

