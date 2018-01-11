
 

 

 

 

 

([C++](Cpp.md)) [std::sprintf](CppSprintf.md)
===============================================

 

Never use [std::sprintf](CppSprintf.md) \[1\]. For a simple
[conversion](CppConvert.md) between [data types](CppDataType.md),
prefer using [boost::lexical\_cast](CppBoostLexical_cast.md) \[2\]. For
simple formatting with need for [templatability](CppTemplate.md), one
might want to use [std::stringstream](CppStdStringstream.md) or
[std::strstream](CppStrstream.md) \[2\]. For complex formatting and no
need for [templatability](CppTemplate.md), one might want to use
[std::snprintf](CppSnprintf.md) \[2\].

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 3 guideline: 'Never use sprintf'.
2.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 3 table 3-2: Guideline summary.

 

 

 

 

 

 

