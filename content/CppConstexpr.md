# ([C++](Cpp.md)) ![C++11](PicCpp11.png) [constexpr](CppConstexpr.md)

[constexpr](CppConstexpr.md) is a [C++11](Cpp11.md)
[keyword](CppKeyword.md) for generalized constant expressions. In other
words, [constexpr](CppConstexpr.md) indicates that an expression will
always [return](CppReturn.md) the same values, thus rendering this
[return](CppReturn.md) value a compile-time constant.

## [Examples](CppExamples.md)

-   [constexpr example 1: use constexpr to set an array its size](CppConstexprExample1.md)

## [Advice](CppAdvice.md)

-   Use constexpr whenever possible \[2,3\]

## External links

 * [C++ Weekly - Ep 104 - Learning "Modern" C++ - 4 : const and constexpr](https://youtu.be/UYEyHlynkPc)

## [References](CppReferences.md)

1.  [GCC page about C++0x support](http://gcc.gnu.org/projects/cxx0x.html)
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7. Advice. page 341: '\[5\] If a function may have to be evaluated at compile time, declare it constexpr'
3.  [Scott Meyers](CppScottMeyers.md). Effective Modern C++ (1st Edition). 2014. ISBN: 978-1-491-90399-5. Item 15 'Use constexpr whenever possible'
