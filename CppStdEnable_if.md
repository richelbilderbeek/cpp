[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::enable\_if](CppStdEnable_if.htm)
=======================================================

 

[std::enable\_if](CppStdEnable_if.htm) is a [C++11](Cpp11.htm) ...

 

[std::enable\_if](CppStdEnable_if.htm) is a convenient way to leverage
[SFINAE](CppSfinae.htm) to conditionally remove
[functions](CppFunction.htm) from [overload
resolution](CppOverloadResolution.htm) based on [type
traits](CppTypeTrait.htm) and to provide separate
[function](CppFunction.htm) overloads and specializations for different
[type traits](CppTypeTrait.htm). [std::enable\_if](CppStdEnable_if.htm)
can be used as an additional function argument (not applicable to
operator overloads), as a return type (not applicable to constructors
and destructors), or as a class template or function template parameter'
\[2\].

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [std::enable\_if example 1: basics](CppStdEnable_ifExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Distinguish among [std::enable\_if](CppStdEnable_if.htm),
    [static\_assert](CppStatic_assert.htm), and =delete \[1\]

 

 

 

 

 

External links
--------------

 

1.  [cppreference.com its page about
    std::enable\_if](http://en.cppreference.com/w/cpp/types/enable_if)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Distinguish among
    std::enable\_if, static\_assert, and =delete'
2.  [cppreference.com its page about
    std::enable\_if](http://en.cppreference.com/w/cpp/types/enable_if):
    'This metafunction is a convenient way to leverage SFINAE to
    conditionally remove functions from overload resolution based on
    type traits and to provide separate function overloads and
    specializations for different type traits. std::enable\_if can be
    used as an additional function argument (not applicable to operator
    overloads), as a return type (not applicable to constructors and
    destructors), or as a class template or function template
    parameter.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
