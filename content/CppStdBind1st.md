



 

 

 

 

 

([C++](Cpp.htm)) [std::bind1st](CppBind1st.htm)
===============================================

 

[std::bind1st](CppBind1st.htm) is deprecated \[2\]. The function
template [std::bind](CppBind.htm) provides a better solution \[2\].

 

[std::bind1st](CppBind1st.htm) is a [binder](CppBinder.htm) to call a
binary function with the value bound as first argument. If the second
argument needs to be bound, use [std::bind2nd](CppBind2nd.htm) instead.

 

The use of [std::bind1st](CppBind1st.htm) is clearest in division:

-   If on all elements, an element called x, you want to perform '1.0 /
    x', use [std::bind1st](CppBind1st.htm) one the 1.0. This is
    demonstrated in the function [Reciprocal](CppReciprocal.htm), which
    is shown below in the example
-   If on all elements, an element called x, you want to perform 'x /
    2.0', use [std::bind2nd](CppBind2nd.htm) one the 2.0. This is
    demonstrated in the function [Halve](CppHalve.htm)

 

 

 

 

 

Example: [Reciprocal](CppReciprocal.htm)
----------------------------------------

 

[Reciprocal](CppReciprocal.htm) replaces all elements by their
reprocicals, that is replaces all elements called 'x' by '1.0/x'.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <numeric> #include <vector>  //From http://www.richelbilderbeek.nl/CppReciprocal.htm void Reciprocal(std::vector<double>& v) {   std::transform(v.begin(),v.end(),v.begin(),     std::bind1st(std::divides<double>(),1.0));     }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [Lambda expressions](CppLambdaExpression.htm) over
    [binders](CppBinder.htm) \[1\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer Lambdas over
    Binders'
2.  Working Draft, Standard for Programming Language C++.
    2014-08-22. N3936. Paragraph D.10. 'The binders binder1st, bind1st
    and bind2nd are deprecated \[Note: the function template bind
    provides a better solution -end note\]'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)

This page has been created by the [tool](Tools.htm)
[CodeToHtml](ToolCodeToHtml.htm)
