

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [boost::mem\_fn](CppMem_fn.htm)
================================================

 

[boost::mem\_fn](CppMem_fn.htm) is an [adapter](CppAdapter.htm),
intended to be more flexible than [STL](CppStl.htm)
[adapters](CppAdapter.htm) like [std::mem\_fun](CppMem_fun.htm) and
[std::mem\_fun\_ref](CppMem_fun_ref.htm).

 

[boost::mem\_fn](CppMem_fn.htm) can often replace both
[std::mem\_fun](CppMem_fun.htm) and
[std::mem\_fun\_ref](CppMem_fun_ref.htm).

 

 

 

 

 

Example
-------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector> #include <boost/shared_ptr.hpp>  struct Widget {   void DoIt() const { /* do it */ } };  void DoIt(const std::vector<boost::shared_ptr<Widget> >& v) {   std::for_each(v.begin(),v.end(),boost::mem_fn(&Widget::DoIt)); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
