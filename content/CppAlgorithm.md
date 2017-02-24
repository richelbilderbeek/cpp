
 

 

 

 

 

([C++](Cpp.md)) [Algorithm](CppAlgorithm.md)
==============================================

 

[Algorithm](CppAlgorithm.md) has multiple meanings:

-   ![ ](PicSpacer.png) an algorithm in general
-   ![STL](PicStl.png) an [STL](CppStl.md) algorithm
-   ![Boost](PicBoost.png) the [Boost.Algorithm](CppBoostAlgorithm.md)
    [library](CppLibrary.md): see
    [Boost.Algorithm](CppBoostAlgorithm.md)

 

 

 

 

 

Algorithm (general)
-------------------

 

An algorithm is a process to be followed in a calculation.

 

[Algorithms](CppAlgorithm.md) can be modified by
[adapters](CppAdapter.md), [binders](CppBinder.md) and
[negaters](CppNegater.md).

 

 

 

 

 

[STL](CppStl.md) [algorithms](CppAlgorithm.md)
------------------------------------------------

 

Most [algorithms](CppAlgorithm.md) can be found in the [header
file](CppHeaderFile.md) [algorithm.h](CppAlgorithmH.md).

 

Non-standard [algorithms](CppAlgorithm.md) lack the [std](CppStd.md)
prefix.

 

The [C++11](Cpp11.md) [algorithm](CppAlgorithm.md) names \[3\]:

 

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::accumulate](CppStdAccumulate.md)
2.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [accumulate\_if](CppStdAccumulate_if.md)
3.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::adjacent\_find](CppStdAdjacent_find.md)
4.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::all\_of](CppStdAll_of.md)
5.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::any\_of](CppStdAny_of.md)
6.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::binary\_search](CppStdBinary_search.md)
7.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::copy](CppStdCopy.md)
8.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::copy\_backward](CppStdCopy_backward.md)
9.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [copy\_if](CppCopy_if.md)
10. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::copy\_if](CppCopy_if.md)
11. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::copy\_n](CppStdCopy_n.md)
12. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::count](CppCStdount.md)
13. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::count\_if](CppStdCount_if.md)
14. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::equal](CppStdEqual.md)
15. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::equal\_range](CppStdEqual_range.md)
16. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::fill](CppStdFill.md)
17. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::find](CppStdFind.md)
18. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::find\_end](CppStdFind_end.md)
19. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::find\_first\_of](CppStdFind_first_of.md)
20. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::find\_if](CppStdFind_if.md)
21. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::find\_if\_not](CppStdFind_if_not.md)
22. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::for\_each](CppStdFor_each.md)
23. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::generate](CppStdGenerate.md)
24. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::generate\_n](CppStdGenerate_n.md)
25. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::includes](CppStdIncludes.md)
26. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::inner\_product](CppStdInner_product.md)
27. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::inplace\_merge](CppStdInplace_merge.md)
28. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::iota](CppStdIota.md)
29. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::is\_heap](CppStdIs_heap.md)
30. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::is\_heap\_until](CppStdIs_heap_until.md)
31. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::is\_sorted](CppStdIs_sorted.md)
32. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::is\_sorted\_until](CppStdIs_sorted_until.md)
33. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::iter\_swap](CppStdIter_swap.md)
34. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::lexicographical\_compare](CppStdLexicographical_compare.md)
35. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::lower\_bound](CppStdLower_bound.md)
36. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::make\_heap](CppStdMake_heap.md)
37. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::max](CppStdMax.md)
38. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::max\_element](CppStdMax_element.md)
39. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::merge](CppStdMerge.md)
40. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::min](CppStdMin.md)
41. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::min\_element](CppStdMin_element.md)
42. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::minmax](CppStdMinmax.md)
43. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::minmax\_element](CppStdMinmax_element.md)
44. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::mismatch](CppStdMismatch.md)
45. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::move](CppStdMove.md)
46. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::move\_backward](CppStdMove_backward.md)
47. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::next\_permutation](CppStdNext_permutation.md)
48. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::none\_of](CppStdNone_of.md)
49. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::nth\_element](CppStdNth_element.md)
50. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::partial\_sort](CppStdPartial_sort.md)
51. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::partial\_sort\_copy](CppStdPartial_sort_copy.md)
52. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::partition](CppStdPartition.md)
53. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::partition\_copy](CppStdPartition_copy.md)
54. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [std::partition\_point](CppStdPartition_point.md)
55. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::pop\_heap](CppStdPop_heap.md)
56. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::prev\_permutation](CppStdPrev_permutation.md)
57. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::push\_heap](CppStdPush_heap.md)
58. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::random\_shuffle](CppStdRandom_shuffle.md)
59. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::remove](CppStdRemove.md)
60. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::remove\_copy](CppStdRemove_copy.md)
61. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::remove\_copy\_if](CppStdRemove_copy_if.md)
62. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::remove\_if](CppStdRemove_if.md)
63. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::replace](CppStdReplace.md)
64. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::replace\_copy](CppStdReplace_copy.md)
65. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::replace\_copy\_if](CppStdReplace_copy_if.md)
66. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::replace\_if](CppStdReplace_if.md)
67. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::reverse](CppStdReverse.md)
68. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::reverse\_copy](CppStdReverse_copy.md)
69. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::rotate](CppStdRotate.md)
70. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::rotate\_copy](CppStdRotate_copy.md)
71. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::search](CppStdSearch.md)
72. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::search\_n](CppStdSearch_n.md)
73. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::set\_difference](CppStdSet_difference.md)
74. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::set\_intersection](CppStdSet_intersection.md)
75. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::set\_symmetric\_difference](CppStdSet_symmetric_difference.md)
76. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::set\_union](CppStdSet_union.md)
77. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::sort](CppStdSort.md)
78. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::sort\_heap](CppStdSort_heap.md)
79. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::stable\_partition](CppStdStable_partition.md)
80. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::stable\_sort](CppStdStable_sort.md)
81. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::swap](CppStdSwap.md)
82. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::swap\_ranges](CppStdSwap_ranges.md)
83. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::transform](CppStdTransform.md)
84. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::unique](CppStdUnique.md)
85. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::unique\_copy](CppStdUnique_copy.md)
86. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [std::upper\_bound](CppStdUpper_bound.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [algorithm](CppAlgorithm.md) calls over hand-written loops
    \[1,2\]
-   Use [templates](CppTemplate.md) to express
    [algorithms](CppAlgorithm.md) that apply to many
    [argument](CppArgument.md) [types](CppDataType.md) \[4\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4. Chapter 18.12.1:
    'Prefer algorithms to loops'.
2.  [Scott Meyers](CppScottMeyers.md). Effective STL.
    ISBN: 0-201-74962-9. Item 43: 'Prefer algorithm calls over
    hand-written loops'
3.  [Bjarne Stroustrup's C++0x FAQ
    page](http://www2.research.att.com/~bs/C++0xFAQ.html#algorithms)
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 23.8,
    page 698: '\[1\] Use templates to express algorithms that apply to
    many argument types'

 

 

 

 

 

 

