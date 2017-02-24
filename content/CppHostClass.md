[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Host class](CppHostClass.htm)
===============================================

 

A [Host class](CppHostClass.htm) is a [class](CppClass.htm) that takes a
[template](CppTemplate.htm) parameter of a policy. Or: a [Host
class](CppHostClass.htm) defines how a group of [classes](CppClass.htm)
should be generated, as opposed to a [class](CppClass.htm) in C++ as
being how the group of objects should be generated:

 

  ------------------------------------------------------------------------------------------------
  ` template <class T> struct MyClass {   T x; };  int main() {   MyClass<int> m;   m.x = 10; }`
  ------------------------------------------------------------------------------------------------

 

Many [STL](CppStl.htm) [classes](CppClass.htm) are [Host
classes](CppHostClass.htm).

 

There is no semantic difference between [class](CppClass.htm) and
[typename](CppTypename.htm) in a template-parameter \[1\].

 

 

 

 

 

Examples
--------

 

-   [Example 1: basics](CppHostClassExample1.htm)
-   [Example 2: ...](CppHostClassExample2.htm)
-   [Example 3: ...](CppHostClassExample3.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
