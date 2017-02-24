
 

 

 

 

 

([C++](Cpp.md)) [Host class](CppHostClass.md)
===============================================

 

A [Host class](CppHostClass.md) is a [class](CppClass.md) that takes a
[template](CppTemplate.md) parameter of a policy. Or: a [Host
class](CppHostClass.md) defines how a group of [classes](CppClass.md)
should be generated, as opposed to a [class](CppClass.md) in C++ as
being how the group of objects should be generated:

 

  ------------------------------------------------------------------------------------------------
  ` template <class T> struct MyClass {   T x; };  int main() {   MyClass<int> m;   m.x = 10; }`
  ------------------------------------------------------------------------------------------------

 

Many [STL](CppStl.md) [classes](CppClass.md) are [Host
classes](CppHostClass.md).

 

There is no semantic difference between [class](CppClass.md) and
[typename](CppTypename.md) in a template-parameter \[1\].

 

 

 

 

 

Examples
--------

 

-   [Example 1: basics](CppHostClassExample1.md)
-   [Example 2: ...](CppHostClassExample2.md)
-   [Example 3: ...](CppHostClassExample3.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.

 

 

 

 

 

 

