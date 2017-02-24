



 

 

 

 

 

([C++](Cpp.md)) [POD](CppPod.md)
==================================

 

[POD](CppPod.md) is as abbreviation on 'plain old [data
(type)](CppDataType.md)'. A [POD](CppPod.md) is also called 'a C-style
[struct](CppStruct.md)' or an aggregate. A [POD](CppPod.md) is a
[class](CppClass.md) without [member function](CppMemberFunction.md)
and [private](CppPrivate.md) members.

 

 

 

 

 

Example
-------

 

  -------------------------------------------------------------------------------------------------------------------
  ` struct Pod {   int x;   double y;   bool z; };  int main() {   Pod p;   p.x = 1;   p.y = 3.14;   p.z = true; }`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [POD](CppPod.md)s only when it really is just data and no
    [invariant](CppInvariant.md) is meaningful for the data members
    \[1\]
-   Consider keeping the [member variables](CppMemberVariable.md)
    [public](CppPublic.md) \[2\]

 

 

 

 

 

[Reference](CppReferences.md)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[3\] Use public data (structs) only when it
    really is just data and no invariant is meaningful for the data
    members'
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
