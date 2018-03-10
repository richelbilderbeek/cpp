# ([C++](Cpp.md)) [Algorithm](CppAlgorithm.md)

[Algorithm](CppAlgorithm.md) has multiple meanings:

-    an algorithm in general
-   ![STL](PicStl.png) an [STL](CppStl.md) algorithm
-   ![Boost](PicBoost.png) the [Boost.Algorithm](CppBoostAlgorithm.md) [library](CppLibrary.md): see
    [Boost.Algorithm](CppBoostAlgorithm.md)

## Algorithm (general)

An algorithm is a logical series of steps followed by a calculation.

[Algorithms](CppAlgorithm.md) can be adapted by lambda expressions, [adapters](CppAdapter.md), [binders](CppBinder.md) and [negaters](CppNegater.md).

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

## Example: copy twice

```c++
#include <algorithm>
#include <cassert>
#include <vector>

int main()
{
  const std::vector<int> v = {1,2};
  std::vector<int> w;
  std::copy(std::begin(v), std::end(v),
    std::back_inserter(w)
  );
  std::copy(std::begin(v), std::end(v),
    std::back_inserter(w)
  );
  const std::vector<int> expected = {1, 2, 1, 2};
  assert(w == expected);
}
```

## Example: copy if non-zero and positive

```c++
#include <algorithm>
#include <cassert>
#include <vector>

int main()
{
  const std::vector<int> v = {-9, -4, 0, 4, 9};
  std::vector<int> w;
  std::copy_if(
    std::begin(v), 
    std::end(v),
    std::back_inserter(w),
    [](const int i) { return i > 0; }
  );
  const std::vector<int> expected = { 4, 9 };
  assert(w == expected);
}
```

## Example: [CoutVector](CppCoutVector.md)

```c++
#include <iterator>
#include <iostream>
#include <ostream>
#include <vector>

int main()
{
  //Create a std::vector
  const std::vector<int> v = {1, 4, 9, 16, 25};

  //Copy it to std::cout
  std::copy(std::begin(v), std::end(v), std::ostream_iterator<int>(std::cout,"\n"));
}
```

## [STL](CppStl.md) [algorithms](CppAlgorithm.md)

Most [algorithms](CppAlgorithm.md) can be found in the [header file](CppHeaderFile.md) [algorithm.h](CppAlgorithmH.md).

Non-standard [algorithms](CppAlgorithm.md) lack the [std](CppStd.md)
prefix.

All [C++11](Cpp11.md) [algorithm](CppAlgorithm.md) names [3]:

1.   [std::accumulate](CppStdAccumulate.md)
2.   [accumulate_if](CppStdAccumulate_if.md)
3.   [std::adjacent_find](CppStdAdjacent_find.md)
4.   [std::all_of](CppStdAll_of.md)
5.   [std::any_of](CppStdAny_of.md)
6.   [std::binary_search](CppStdBinary_search.md)
7.   [std::copy](CppStdCopy.md)
8.   [std::copy_backward](CppStdCopy_backward.md)
9.   [copy_if](CppCopy_if.md)
10.  [std::copy_if](CppCopy_if.md)
11.  [std::copy_n](CppStdCopy_n.md)
12.  [std::count](CppCStdount.md)
13.  [std::count_if](CppStdCount_if.md)
14.  [std::equal](CppStdEqual.md)
15.  [std::equal_range](CppStdEqual_range.md)
16.  [std::fill](CppStdFill.md)
17.  [std::find](CppStdFind.md)
18.  [std::find_end](CppStdFind_end.md)
19.  [std::find_first_of](CppStdFind_first_of.md)
20.  [std::find_if](CppStdFind_if.md)
21.  [std::find_if_not](CppStdFind_if_not.md)
22.  [std::for_each](CppStdFor_each.md)
23.  [std::generate](CppStdGenerate.md)
24.  [std::generate_n](CppStdGenerate_n.md)
25.  [std::includes](CppStdIncludes.md)
26.  [std::inner_product](CppStdInner_product.md)
27.  [std::inplace_merge](CppStdInplace_merge.md)
28.  [std::iota](CppStdIota.md)
29.  [std::is_heap](CppStdIs_heap.md)
30.  [std::is_heap_until](CppStdIs_heap_until.md)
31.  [std::is_sorted](CppStdIs_sorted.md)
32.  [std::is_sorted_until](CppStdIs_sorted_until.md)
33.  [std::iter_swap](CppStdIter_swap.md)
34.  [std::lexicographical_compare](CppStdLexicographical_compare.md)
35.  [std::lower_bound](CppStdLower_bound.md)
36.  [std::make_heap](CppStdMake_heap.md)
37.  [std::max](CppStdMax.md)
38.  [std::max_element](CppStdMax_element.md)
39.  [std::merge](CppStdMerge.md)
40.  [std::min](CppStdMin.md)
41.  [std::min_element](CppStdMin_element.md)
42.  [std::minmax](CppStdMinmax.md)
43.  [std::minmax_element](CppStdMinmax_element.md)
44.  [std::mismatch](CppStdMismatch.md)
45.  [std::move](CppStdMove.md)
46.  [std::move_backward](CppStdMove_backward.md)
47.  [std::next_permutation](CppStdNext_permutation.md)
48.  [std::none_of](CppStdNone_of.md)
49.  [std::nth_element](CppStdNth_element.md)
50.  [std::partial_sort](CppStdPartial_sort.md)
51.  [std::partial_sort_copy](CppStdPartial_sort_copy.md)
52.  [std::partition](CppStdPartition.md)
53.  [std::partition_copy](CppStdPartition_copy.md)
54.  [std::partition_point](CppStdPartition_point.md)
55.  [std::pop_heap](CppStdPop_heap.md)
56.  [std::prev_permutation](CppStdPrev_permutation.md)
57.  [std::push_heap](CppStdPush_heap.md)
58.  [std::random_shuffle](CppStdRandom_shuffle.md)
59.  [std::remove](CppStdRemove.md)
60.  [std::remove_copy](CppStdRemove_copy.md)
61.  [std::remove_copy_if](CppStdRemove_copy_if.md)
62.  [std::remove_if](CppStdRemove_if.md)
63.  [std::replace](CppStdReplace.md)
64.  [std::replace_copy](CppStdReplace_copy.md)
65.  [std::replace_copy_if](CppStdReplace_copy_if.md)
66.  [std::replace_if](CppStdReplace_if.md)
67.  [std::reverse](CppStdReverse.md)
68.  [std::reverse_copy](CppStdReverse_copy.md)
69.  [std::rotate](CppStdRotate.md)
70.  [std::rotate_copy](CppStdRotate_copy.md)
71.  [std::search](CppStdSearch.md)
72.  [std::search_n](CppStdSearch_n.md)
73.  [std::set_difference](CppStdSet_difference.md)
74.  [std::set_intersection](CppStdSet_intersection.md)
75.  [std::set_symmetric_difference](CppStdSet_symmetric_difference.md)
76.  [std::set_union](CppStdSet_union.md)
77.  [std::sort](CppStdSort.md)
78.  [std::sort_heap](CppStdSort_heap.md)
79.  [std::stable_partition](CppStdStable_partition.md)
80.  [std::stable_sort](CppStdStable_sort.md)
81.  [std::swap](CppStdSwap.md)
82.  [std::swap_ranges](CppStdSwap_ranges.md)
83.  [std::transform](CppStdTransform.md)
84.  [std::unique](CppStdUnique.md)
85.  [std::unique_copy](CppStdUnique_copy.md)
86.  [std::upper_bound](CppStdUpper_bound.md)

## [Advice](CppAdvice.md)

 * Prefer [algorithm](CppAlgorithm.md) calls over hand-written loops [1,2]
 * Use [templates](CppTemplate.md) to express [algorithms](CppAlgorithm.md) that apply to many [argument](CppArgument.md) [types](CppDataType.md) [4]

## External links

 * [C++ Weekly - Ep 105 - Learning "Modern" C++ - 5: Looping and Algorithms](https://youtu.be/A0-x-Djey-Q)

## [References](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1: 'Prefer algorithms to loops'.
 * [2] [Scott Meyers](CppScottMeyers.md). Effective STL. ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over hand-written loops'
 * [3] [Bjarne Stroustrup's C++0x FAQ page](http://www2.research.att.com/~bs/C++0xFAQ.html#algorithms)
 * [4] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8, page 698: '[1] Use templates to express algorithms that apply to many argument types'
