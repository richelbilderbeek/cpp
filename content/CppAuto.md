



 

 

 

 

 

([C++](Cpp.htm)) [auto](CppAuto.htm)
====================================

 

[auto](CppAuto.htm) is a [keyword](CppKeyword.htm) that has different
meanings, depending on the [standard](CppStandard.htm) used:

-   ![C++11](PicCpp11.png) [auto](CppAuto.htm) in the [C++11](Cpp11.htm)
    [standard](CppStandard.htm)
-   ![C++98](PicCpp98.png) [auto](CppAuto.htm) in the [C++98](Cpp98.htm)
    [standard](CppStandard.htm)

 

 

 

 

 

![C++11](PicCpp11.png) [auto](CppAuto.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------

 

In the [C++11](Cpp11.htm) Standard, [auto](CppAuto.htm) is useful to let
the [compiler](CppCompiler.htm) determine a
[variable](CppVariable.htm)'s [data type](CppDataType.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [auto](CppAuto.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------

 

[auto](CppAuto.htm) as described in the ISO/IEC 14882:2003 C++ Standard
is a [keyword](CppKeyword.htm) to specify that a [locally](CppLocal.htm)
[declared](CppDeclaration.htm) [variable](CppVariable.htm) is destroyed
at the end of its [scope](CppScope.htm). In other words: to specify to
do, what already will be done. In [C++98](Cpp98.htm), never write
[auto](CppAuto.htm) \[1\]

 

 

 

 

 

 

[Example](CppExample.htm)
-------------------------

 

-   [auto example 1: basics](CppAutoExample1.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Use [auto](CppAuto.htm) to avoid verbosity and typos when you use
    [iterators](CppIterator.htm) \[2\]
-   Prefer [auto](CppAuto.htm) to explicit type
    [declarations](CppDeclaration.htm) \[3\]
-   Prefer the [=](CppOperatorAssign.htm) [syntax](CppSyntax.htm) for
    the [initialization](CppListInitialization.htm) in
    [declarations](CppDeclaration.htm) using [auto](CppAuto.htm) \[5\]
-   Remember that [auto](CppAuto.htm) + { expr } ==
    [std::initializer\_list](CppStdInitializer_list.htm) \[4\]
-   In [C++98](Cpp98.htm), never write [auto](CppAuto.htm) \[1\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 28 guideline: 'Never write auto'.
2.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[17\] Use auto to avoid verbosity and typos when
    you use iterators'
3.  [Scott Meyers](CppScottMeyers.htm). [C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer auto to
    Explicit Type
    Declarations'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11)
4.  [Scott Meyers](CppScottMeyers.htm). [C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Remember that auto + {
    expr } ==
    std::initializer\_list'](http://cppandbeyond.com/2012/04/16/session-topic-initial-thoughts-on-effective-c11)
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[20\] Prefer the = syntax for the initialization
    in declarations using auto'

 

 

 

 

 





 



