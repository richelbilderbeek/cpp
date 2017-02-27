# ([C++](Cpp.md)) [Iterator](CppIterator.md)

[Iterators](CppIterator.md) allow a uniform way to travel through all
[STL](CppStl.md) [containers](CppContainer.md).

## [Examples](CppExample.md)

-   [Iterator example 1: basics](CppIteratorExample1.md)


## [Advice](CppAdvice.md)

-   Prefer using standard [algorithms](CppAlgorithm.md), instead of
    crafting your own [for](CppFor.md) loops [1]
-   Use [const](CppConst.md) [iterators](CppIterator.md) when you are
    not modifying the contents of a [container](CppContainer.md)
    [2,4]
-   Prefer comparing [iterators](CppIterator.md) with
    [operator!=](CppOperatorNotEqual.md), instead of
    [operator&lt;](CppOperatorLess.md) [3]
-   Use [auto](CppAuto.md) to avoid verbosity and typos when you use
    [iterators](CppIterator.md) [5]
-   Don't use [iterators](CppIterator.md) into a resized
    [std::vector](CppStdVector.md) or [std::deque](CppStdDeque.md) [6]
-   If you write [iterator](CppIterator.md)-based [functions](CppFunction.md), 
    provide a user-friendly [interface](CppInterface.md) on top of them [7]

## [References](CppReferences.md)

1.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Prefer reusing algorithms,
    particularly standard algorithms (e.g., for\_each), instead of
    crafting your own loops'.
2.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Use const\_iterator when you
    are not modifying the contents of a container'.
3.  [Herb Sutter](CppHerbSutter.md). Exceptional C++ style. 2005.
    ISBN: 0-201-76042-8. Item 1 guideline: 'Prefer comparing iterators
    with !=, not &lt;'.
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[16\] Use const iterators where you don't need
    to modify the elements of a container'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[17\] Use auto to avoid verbosity and typos when
    you use iterators'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[21\] Don't use iterators into a resized vector
    or deque'
7.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 4.1.5: 'If you write iterator-based functions, provide a user-friendly interface on top of them'
