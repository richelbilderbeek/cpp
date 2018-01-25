# ([C++](Cpp.md)) [Sort](CppStdSort.md)

This page is about [sorting](CppStdSort.md) and the [STL](CppStl.md)
[algorithm](CppAlgorithm.md) [std::sort](CppStdSort.md).

## Example: sorting a std::vector

```c++
#include <algorithm>
#include <cassert>
#include <vector>

int main()
{
  std::vector<int> v = {4, 2, 3, 1};
  std::sort(std::begin(v), std::end(v));
  const std::vector<int> expected = {1, 2, 3, 4};
  assert(v == expected);
}
```

## [STL](CppStl.md) [sorting](CppStdSort.md) [algorithms](CppAlgorithm.md)

 * [std::partial_sort](CppStdPartial_sort.md)
 * [std::sort](CppStdSort.md)


## [Sorting](CppStdSort.md) [code snippets](CppCodeSnippets.md)

 * [Bubble Sort](CppBubbleSort.md)
 * [Insertion Sort](CppInsertionSort.md)
 * [Selection Sort](CppSelectionSort.md)
 * [SortContainer, sort a container](CppSortContainer.md)

## Types of [sorting](CppStdSort.md)

 * Beechicksort
 * [Bubble Sort](CppBubbleSort.md)
 * [Insertion Sort](CppInsertionSort.md)
 * Quicksort
 * [Selection Sort](CppSelectionSort.md)
