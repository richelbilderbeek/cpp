# ([C++](Cpp.md)) [for](CppFor.md)

[for](CppFor.md) is a [keyword](CppKeyword.md) to start a for-loop.

## ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [For](CppFor.md) loop syntax

```c++
for ( /* initialization */ ; /* breaking condition */ ; /* after-loop operation */ )
{
  // The code block that will be repeated while the breaking condition is true
}
```

## [Examples](CppExample.md)

 * [for example 1: basics](CppForExample1.md)

## [Advice](CppAdvice.md)

 * Prefer [algorithms](CppAlgorithm.md) over loops [1,2] (see [Exercise #9: No for-loops](CppExerciseNoForLoops.md) to learn how to do so)
 * Prefer a [for](CppFor.md)-[statement](CppStatement.md) to a [while](CppWhile.md)-[statement](CppStatement.md) when there is an obvious loop [variable](CppVariable.md) [5]
 * Prefer a [while](CppWhile.md)-[statement](CppStatement.md) to a [for](CppFor.md)-[statement](CppStatement.md) when there is no obvious loop [variable](CppVariable.md) [6]
 * Since [C++11](Cpp11.md), prefer a [range-for](CppRangeFor.md)-statement to a for-statement when there is a choice [4]

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 18.12.1 : 'Prefer algorithms over loops'
 * [2] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 84: 'Prefer algorithm calls to handwritten loops'
 * [3] [GCC page about C++0x support](http://gcc.gnu.org/projects/cxx0x.html)
 * [4] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8. Advice. page 240: '[3] Prefer a range-for-statement to a for-statement when there is a choice'
 * [5] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8. Advice. page 240: '[4] Prefer a for-statement to a while-statement when there is an obvious loop variable'
 * [6] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8. Advice. page 240: '[5] Prefer a while-statement to a for-statement when there is no obvious loop variable'
