



 

 

 

 

 

([C++](Cpp.md)) [Template class](CppTemplateClass.md)
=======================================================

 

A [template class](CppTemplateClass.md) is a [class](CppClass.md) that
takes a [template](CppTemplate.md) parameter. Or: a [template
class](CppTemplateClass.md) defines how a group of
[classes](CppClass.md) should be generated, as opposed to a
[class](CppClass.md) in C++ as being how the group of objects should be
generated:

 

  ------------------------------------------------------------------------------------------------
  ` template <class T> struct MyClass {   T x; };  int main() {   MyClass<int> m;   m.x = 10; }`
  ------------------------------------------------------------------------------------------------

 

Many [STL](CppStl.md) [classes](CppClass.md) are [template
classes](CppTemplateClass.md).

 

There is no semantic difference between [class](CppClass.md) and
[typename](CppTypename.md) in a template-parameter \[1\].

 

 

 

 

 

Examples
--------

 

-   [Example 1: class holding a templated member
    variable](CppTemplateClassExample1.md)
-   [Example 2: class that has a class template
    type](CppTemplateClassExample2.md)
-   [Example 3: class that has an integer template
    type](CppTemplateClassExample3.md)
-   [Example 4: class that has an enum class template
    type](CppTemplateClassExample4.md)
-   [Example 5: copy policy of integer
    class](CppTemplateClassExample5.md)
-   [Example 6: copy policy of template class type, two specialized
    classes](CppTemplateClassExample6.md)
-   [Example 7: copy policy of template class type, two partially
    specialized classes](CppTemplateClassExample7.md)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  C++. International Standard. ISO/IEC 14882. Second edition.
    Paragraph 14.1.2.

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
