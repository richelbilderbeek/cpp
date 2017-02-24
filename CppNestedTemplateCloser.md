[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [nested template closer](CppNestedTemplateCloser.htm)
======================================================================

 

When [template](CppTemplate.htm) [data types](CppDataType.htm) are
nested, for example a [std::vector](CppVector.htm) of
[std::vectors](CppVector.htm) of [int](CppInt.htm), its
[declaration](CppDeclaration.htm) ends with its [nested template
closer](CppNestedTemplateCloser.htm).

 

The [nested template closer](CppNestedTemplateCloser.htm) depends on the
[standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [nested template
    closer](CppNestedTemplateCloser.htm) in the [C++98](Cpp98.htm)
    [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [nested template
    closer](CppNestedTemplateCloser.htm) in the [C++11](Cpp11.htm)
    [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [nested template closer](CppNestedTemplateCloser.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
----------------------------------------------------------------------------------------------------------------------------------

 

The [nested template closer](CppNestedTemplateCloser.htm) must be '&gt;
&gt;', instead of just '&gt;&gt;'.

 

  --------------------------------------------------------------------------
  ` #include <vector>  int main() {   std::vector<std::vector<int> > v; }`
  --------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [nested template closer](CppNestedTemplateCloser.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
----------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppNestedTemplateCloser' (zip)](CppNestedTemplateCloser.zip)

 

The [nested template closer](CppNestedTemplateCloser.htm) can be
'&gt;&gt;'.

 

  -------------------------------------------------------------------------
  ` #include <vector>  int main() {   std::vector<std::vector<int>> v; }`
  -------------------------------------------------------------------------

 

Technical note: this code is [compiled](CppCompile.htm) successfully
using the [G++](CppGpp.htm) 4.4.5 [compiler](CppCompiler.htm), which is
supplied with the [Qt Creator](CppQtCreator.htm) 2.0.0
[IDE](CppIde.htm).

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
