[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [POD](CppPod.htm)
==================================

 

[POD](CppPod.htm) is as abbreviation on 'plain old [data
(type)](CppDataType.htm)'. A [POD](CppPod.htm) is also called 'a C-style
[struct](CppStruct.htm)' or an aggregate. A [POD](CppPod.htm) is a
[class](CppClass.htm) without [member function](CppMemberFunction.htm)
and [private](CppPrivate.htm) members.

 

 

 

 

 

Example
-------

 

  -------------------------------------------------------------------------------------------------------------------
  ` struct Pod {   int x;   double y;   bool z; };  int main() {   Pod p;   p.x = 1;   p.y = 3.14;   p.z = true; }`
  -------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [POD](CppPod.htm)s only when it really is just data and no
    [invariant](CppInvariant.htm) is meaningful for the data members
    \[1\]
-   Consider keeping the [member variables](CppMemberVariable.htm)
    [public](CppPublic.htm) \[2\]

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 16.4.
    Advice. page 479: '\[3\] Use public data (structs) only when it
    really is just data and no invariant is meaningful for the data
    members'
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 41: 'Make data members private, except in behaviourless
    aggregates (C-style structs).

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
