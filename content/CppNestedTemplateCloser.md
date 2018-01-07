
 

 

 

 

 

([C++](Cpp.md)) [nested template closer](CppNestedTemplateCloser.md)
======================================================================

 

When [template](CppTemplate.md) [data types](CppDataType.md) are
nested, for example a [std::vector](CppStdVector.md) of
[std::vectors](CppStdVector.md) of [int](CppInt.md), its
[declaration](CppDeclaration.md) ends with its [nested template
closer](CppNestedTemplateCloser.md).

 

The [nested template closer](CppNestedTemplateCloser.md) depends on the
[standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [nested template
    closer](CppNestedTemplateCloser.md) in the [C++98](Cpp98.md)
    [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [nested template
    closer](CppNestedTemplateCloser.md) in the [C++11](Cpp11.md)
    [standard](CppStandard.md)

 

 

 

 

 

![C++98](PicCpp98.png) [nested template closer](CppNestedTemplateCloser.md) in the [C++98](Cpp98.md) [standard](CppStandard.md)
----------------------------------------------------------------------------------------------------------------------------------

 

The [nested template closer](CppNestedTemplateCloser.md) must be '&gt;
&gt;', instead of just '&gt;&gt;'.

 

  --------------------------------------------------------------------------
  ` #include <vector>  int main() {   std::vector<std::vector<int> > v; }`
  --------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [nested template closer](CppNestedTemplateCloser.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
----------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppNestedTemplateCloser' (zip)](CppNestedTemplateCloser.zip)

 

The [nested template closer](CppNestedTemplateCloser.md) can be
'&gt;&gt;'.

 

  -------------------------------------------------------------------------
  ` #include <vector>  int main() {   std::vector<std::vector<int>> v; }`
  -------------------------------------------------------------------------

 

Technical note: this code is [compiled](CppCompile.md) successfully
using the [G++](CppGpp.md) 4.4.5 [compiler](CppCompiler.md), which is
supplied with the [Qt Creator](CppQtCreator.md) 2.0.0
[IDE](CppIde.md).

 

 

 

 

 

