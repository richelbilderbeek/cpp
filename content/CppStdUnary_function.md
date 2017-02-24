[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [std::unary\_function](CppStdUnary_function.htm)
=================================================================

 

[std::unary\_function](CppStdUnary_function.htm) is deprecated \[2,3\].

 

[std::unary\_function](CppStdUnary_function.htm) is an empty
[class](CppClass.htm) that serves as the [base class](CppBaseClass.htm)
of a unary [functor](CppFunctor.htm). A unary [functor](CppFunctor.htm)
defines [operator()](CppOperatorFunctionCall.htm), where
[operator()](CppOperatorFunctionCall.htm) takes one
[argument](CppArgument.htm).

 

The advantage of using [std::unary\_function](CppStdUnary_function.htm)
is its (two) [typedef](CppTypedef.htm)s, so that the
[derived](CppDerivedClass.htm) [functors](CppFunctor.htm) fits into more
[algorithms](CppAlgorithm.htm). Make [functors](CppFunctor.htm)
adaptable \[1\].

 

 

 

 

 

 

Example: [MakeAbs](CppMakeAbs.htm)
----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cmath> #include <functional> #include <vector>  template <class T> struct Abs : public std::unary_function<T,T> {   const T operator()(const T& x) const { return std::abs(x); } };  void MakeAbs(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Abs<int>()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example [definition](CppDefinition.htm) of [std::unary\_function](CppStdUnary_function.htm)
-------------------------------------------------------------------------------------------

 

Simplified from the GNU ISO C++ Library, version 4.7.2:

 

  -------------------------------------------------------------------------------------------------------------------------------------------
  ` template<typename _Arg, typename _Result> struct unary_function {   typedef _Arg argument_type;      typedef _Result result_type;   };`
  -------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective STL.
    ISBN: 0-201-74962-9. Item 40: 'Make functor classes adaptable'
2.  Programming Language C++, Library Working Group. 2010-10-06.
    Document number: N3145=10-0135
3.  Working Draft, Standard for Programming Language C++.
    2014-08-22. N3936. Paragraph D.8.2. 'The class templates
    unary\_function and binary\_function are deprecated. A program shall
    not declare specializations of these templates.'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
