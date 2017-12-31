# ([C++](Cpp.md)) [std::copy](CppCopy.md)

[std::copy](CppCopy.md) is an [STL](CppStl.md) [algorithm](CppAlgorithm.md) to copy
[container](CppContainer.md) elements.

[std::copy](CppCopy.md) assumes that the memory data is copied to is
valid. For example, if you copy a [std::vector](CppVector.md) of size
10 to another [std::vector](CppVector.md), the latter must have a size
of 10 at least. But if the size is unknown, use an
[inserter](CppInserter.md) like
[std::back_inserter](CppBack_inserter.md).

Related algorithms are:

 * [std::copy_backward](CppCopy_backward.md): copy values to the back of a [container](CppContainer.md)
 * [std::copy_if](CppCopy_if.md): for performing a conditional copy
 * [std::transform](CppTransform.md): for copy and modify

Prefer [algorithm](CppAlgorithm.md) calls over hand-written loops [1, 2].

## Example: [Append](CppAppend.md)

```c++
#include <algorithm>

template <class Container>
void append(Container& to, const Container& from)
{
  std::copy(std::begin(from), std::end(from), std::back_inserter(to));
}

```

## Example: [CoutVector](CppCoutVector.md)

```c++
#include <iostream>
#include <iterator>
#include <ostream>
#include <vector>

template <class T>
void cout_vector(const std::vector<T>& v)
{
  std::copy(std::begin(v), std::end(v), std::ostream_iterator<T>(std::cout,"\n"));
}

```

## External links

 * [SGI's page about std::copy](http://www.sgi.com/tech/stl/copy.html)
 * [cplusplus.com page about std::copy](http://www.cplusplus.com/reference/algorithm/copy)

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1: 'Prefer algorithms to loops.
 * [2] [Scott Meyers](CppScottMeyers.md). Effective STL. ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over hand-written loops'
