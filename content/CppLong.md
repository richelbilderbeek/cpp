

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [long](CppLong.htm)
====================================

 

[long](CppLong.htm) is a [data type](CppDataType.htm) like
[int](CppInt.htm). Use [GetMaxInt](CppGetMaxInt.htm) and
[GetMaxLong](CppGetMaxLong.htm) to compare their maximum values.

 

Avoid using [long](CppLong.htm) in a [class](CppClass.htm)
[interface](CppInterface.htm); use [int](CppInt.htm) instead \[1\].

 

  ---------------------------------
  ` int main() {   long i = 3; }`
  ---------------------------------

 

 

 

 

 

[long](CppLong.htm) [code snippets](CppCodeSnippets.htm)
--------------------------------------------------------

 

1.  [GetMaxLong](CppGetMaxLong.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 9.2.3: 'Avoid using long in the
    interface; assert(sizeof(int)&gt;=4) and use either int or a
    user-defined large-integer type instead'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
