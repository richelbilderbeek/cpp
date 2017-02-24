

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::sprintf](CppSprintf.htm)
===============================================

 

Never use [std::sprintf](CppSprintf.htm) \[1\]. For a simple
[conversion](CppConvert.htm) between [data types](CppDataType.htm),
prefer using [boost::lexical\_cast](CppLexical_cast.htm) \[2\]. For
simple formatting with need for [templatability](CppTemplate.htm), one
might want to use [std::stringstream](CppStringstream.htm) or
[std::strstream](CppStrstream.htm) \[2\]. For complex formatting and no
need for [templatability](CppTemplate.htm), one might want to use
[std::snprintf](CppSnprintf.htm) \[2\].

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 3 guideline: 'Never use sprintf'.
2.  [Herb Sutter](CppHerbSutter.htm). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 3 table 3-2: Guideline summary.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
