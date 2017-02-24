



 

 

 

 

 

([C++](Cpp.md)) [std::enable\_if](CppStdEnable_if.md)
=======================================================

 

[std::enable\_if](CppStdEnable_if.md) is a [C++11](Cpp11.md) ...

 

[std::enable\_if](CppStdEnable_if.md) is a convenient way to leverage
[SFINAE](CppSfinae.md) to conditionally remove
[functions](CppFunction.md) from [overload
resolution](CppOverloadResolution.md) based on [type
traits](CppTypeTrait.md) and to provide separate
[function](CppFunction.md) overloads and specializations for different
[type traits](CppTypeTrait.md). [std::enable\_if](CppStdEnable_if.md)
can be used as an additional function argument (not applicable to
operator overloads), as a return type (not applicable to constructors
and destructors), or as a class template or function template parameter'
\[2\].

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

-   [std::enable\_if example 1: basics](CppStdEnable_ifExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Distinguish among [std::enable\_if](CppStdEnable_if.md),
    [static\_assert](CppStatic_assert.md), and =delete \[1\]

 

 

 

 

 

External links
--------------

 

1.  [cppreference.com its page about
    std::enable\_if](http://en.cppreference.com/w/cpp/types/enable_if)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
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

 

 

 

 

 





 




This page has been created by the [tool](Tools.md)
[CodeToHtml](ToolCodeToHtml.md)
