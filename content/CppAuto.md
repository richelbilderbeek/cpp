



 

 

 

 

 

([C++](Cpp.md)) [auto](CppAuto.md)
====================================

 

[auto](CppAuto.md) is a [keyword](CppKeyword.md) that has different
meanings, depending on the [standard](CppStandard.md) used:

-   ![C++11](PicCpp11.png) [auto](CppAuto.md) in the [C++11](Cpp11.md)
    [standard](CppStandard.md)
-   ![C++98](PicCpp98.png) [auto](CppAuto.md) in the [C++98](Cpp98.md)
    [standard](CppStandard.md)

 

 

 

 

 

![C++11](PicCpp11.png) [auto](CppAuto.md) in the [C++11](Cpp11.md) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------

 

In the [C++11](Cpp11.md) Standard, [auto](CppAuto.md) is useful to let
the [compiler](CppCompiler.md) determine a
[variable](CppVariable.md)'s [data type](CppDataType.md)

 

 

 

 

 

![C++98](PicCpp98.png) [auto](CppAuto.md) in the [C++98](Cpp98.md) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------

 

[auto](CppAuto.md) as described in the ISO/IEC 14882:2003 C++ Standard
is a [keyword](CppKeyword.md) to specify that a [locally](CppLocal.md)
[declared](CppDeclaration.md) [variable](CppVariable.md) is destroyed
at the end of its [scope](CppScope.md). In other words: to specify to
do, what already will be done. In [C++98](Cpp98.md), never write
[auto](CppAuto.md) \[1\]

 

 

 

 

 

 

[Example](CppExample.md)
-------------------------

 

-   [auto example 1: basics](CppAutoExample1.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Use [auto](CppAuto.md) to avoid verbosity and typos when you use
    [iterators](CppIterator.md) \[2\]
-   Prefer [auto](CppAuto.md) to explicit type
    [declarations](CppDeclaration.md) \[3\]
-   Prefer the [=](CppOperatorAssign.md) [syntax](CppSyntax.md) for
    the [initialization](CppListInitialization.md) in
    [declarations](CppDeclaration.md) using [auto](CppAuto.md) \[5\]
-   Remember that [auto](CppAuto.md) + { expr } ==
    [std::initializer\_list](CppStdInitializer_list.md) \[4\]
-   In [C++98](Cpp98.md), never write [auto](CppAuto.md) \[1\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write auto'.
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[17\] Use auto to avoid verbosity and typos when
    you use iterators'
3.  [Scott Meyers](CppScottMeyers.md). [C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer auto to
    Explicit Type
    Declarations'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11)
4.  [Scott Meyers](CppScottMeyers.md). [C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Remember that auto + {
    expr } ==
    std::initializer\_list'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11)
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[20\] Prefer the = syntax for the initialization
    in declarations using auto'

 

 

 

 

 





 



