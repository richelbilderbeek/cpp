



 

 

 

 

 

([C++](Cpp.md)) [long](CppLong.md)
====================================

 

[long](CppLong.md) is a [data type](CppDataType.md) like
[int](CppInt.md). Use [GetMaxInt](CppGetMaxInt.md) and
[GetMaxLong](CppGetMaxLong.md) to compare their maximum values.

 

Avoid using [long](CppLong.md) in a [class](CppClass.md)
[interface](CppInterface.md); use [int](CppInt.md) instead \[1\].

 

  ---------------------------------
  ` int main() {   long i = 3; }`
  ---------------------------------

 

 

 

 

 

[long](CppLong.md) [code snippets](CppCodeSnippets.md)
--------------------------------------------------------

 

1.  [GetMaxLong](CppGetMaxLong.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.2.3: 'Avoid using long in the
    interface; assert(sizeof(int)&gt;=4) and use either int or a
    user-defined large-integer type instead'

 

 

 

 

 





 



