

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Template class](CppTemplateClass.htm)
=======================================================

 

A [template class](CppTemplateClass.htm) is a [class](CppClass.htm) that
takes a [template](CppTemplate.htm) parameter. Or: a [template
class](CppTemplateClass.htm) defines how a group of
[classes](CppClass.htm) should be generated, as opposed to a
[class](CppClass.htm) in C++ as being how the group of objects should be
generated:

 

  ------------------------------------------------------------------------------------------------
  ` template <class T> struct MyClass {   T x; };  int main() {   MyClass<int> m;   m.x = 10; }`
  ------------------------------------------------------------------------------------------------

 

Many [STL](CppStl.htm) [classes](CppClass.htm) are [template
classes](CppTemplateClass.htm).

 

There is no semantic difference between [class](CppClass.htm) and
[typename](CppTypename.htm) in a template-parameter \[1\].

 

 

 

 

 

Examples
--------

 

-   [Example 1: class holding a templated member
    variable](CppTemplateClassExample1.htm)
-   [Example 2: class that has a class template
    type](CppTemplateClassExample2.htm)
-   [Example 3: class that has an integer template
    type](CppTemplateClassExample3.htm)
-   [Example 4: class that has an enum class template
    type](CppTemplateClassExample4.htm)
-   [Example 5: copy policy of integer
    class](CppTemplateClassExample5.htm)
-   [Example 6: copy policy of template class type, two specialized
    classes](CppTemplateClassExample6.htm)
-   [Example 7: copy policy of template class type, two partially
    specialized classes](CppTemplateClassExample7.htm)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
