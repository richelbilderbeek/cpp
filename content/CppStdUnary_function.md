
 

 

 

 

 

([C++](Cpp.md)) [std::unary\_function](CppStdUnary_function.md)
=================================================================

 

[std::unary\_function](CppStdUnary_function.md) is deprecated \[2,3\].

 

[std::unary\_function](CppStdUnary_function.md) is an empty
[class](CppClass.md) that serves as the [base class](CppBaseClass.md)
of a unary [functor](CppFunctor.md). A unary [functor](CppFunctor.md)
defines [operator()](CppOperatorFunctionCall.md), where
[operator()](CppOperatorFunctionCall.md) takes one
[argument](CppArgument.md).

 

The advantage of using [std::unary\_function](CppStdUnary_function.md)
is its (two) [typedef](CppTypedef.md)s, so that the
[derived](CppDerivedClass.md) [functors](CppFunctor.md) fits into more
[algorithms](CppAlgorithm.md). Make [functors](CppFunctor.md)
adaptable \[1\].

 

 

 

 

 

 

Example: [MakeAbs](CppMakeAbs.md)
----------------------------------

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cmath> #include <functional> #include <vector>  template <class T> struct Abs : public std::unary_function<T,T> {   const T operator()(const T& x) const { return std::abs(x); } };  void MakeAbs(std::vector<int>& v) {   std::transform(v.begin(),v.end(),v.begin(),Abs<int>()); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Example [definition](CppDefinition.md) of [std::unary\_function](CppStdUnary_function.md)
-------------------------------------------------------------------------------------------

 

Simplified from the GNU ISO C++ Library, version 4.7.2:

 

  -------------------------------------------------------------------------------------------------------------------------------------------
  ` template<typename _Arg, typename _Result> struct unary_function {   typedef _Arg argument_type;      typedef _Result result_type;   };`
  -------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective STL.
    ISBN: 0-201-74962-9. Item 40: 'Make functor classes adaptable'
2.  Programming Language C++, Library Working Group. 2010-10-06.
    Document number: N3145=10-0135
3.  Working Draft, Standard for Programming Language C++.
    2014-08-22. N3936. Paragraph D.8.2. 'The class templates
    unary\_function and binary\_function are deprecated. A program shall
    not declare specializations of these templates.'

 

 

 

 

 

 

