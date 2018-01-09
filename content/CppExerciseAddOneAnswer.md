
 

 

 

 

 

([C++](Cpp.md)) [Answer of exercise \#7: AddOne](CppExerciseAddOneAnswer.md)
==============================================================================

 

This is the answer of [exercise \#7: AddOne](CppExerciseAddOne.md).

 

 

 

 

Question \#0: How many correct ways are there to do this?
---------------------------------------------------------

 

The answer is a product of the number of ways to add one to an
[int](CppInt.md) and the number of ways to iterate through a
[std::vector](CppStdVector.md).

 

The number of ways to add one to an [int](CppInt.md) are five:

 

1.  Assignment 1st (x=1+x)
2.  Assignment 2nd (x=x+1)
3.  Increase (x+=1)
4.  Post-increment (x++)
5.  Pre-increment (++x)

 

The number of ways to iterate through a [std::vector](CppStdVector.md) are
twelve:

 

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    a [for](CppFor.md)-loop, requesting the
    [std::vector](CppStdVector.md) its size only once
2.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    a [for](CppFor.md)-loop, requesting the
    [std::vector](CppStdVector.md) its size every iteration
3.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [iterator](CppIterator.md), requesting the
    [std::vector](CppStdVector.md) its end only once
4.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [iterator](CppIterator.md), requesting the
    [std::vector](CppStdVector.md) its end only every iteration
5.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.md) to a non-[inlined](CppInline.md)
    [function](CppFunction.md)
6.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.md) to an [inlined](CppInline.md)
    [function](CppFunction.md)
7.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.md) to a [functor](CppFunctor.md) with
    a non-[inlined](CppInline.md) operator()
8.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.md) to a [functor](CppFunctor.md) with
    an [inlined](CppInline.md) operator()
9.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![Boost](PicBoost.png)
    Using [BOOST\_FOREACH](CppBOOST_FOREACH.md)
10. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![Boost](PicBoost.png)
    Using the [Boost](CppBoost.md) [Lambda](CppLambda.md)
    [library](CppLibrary.md)
11. ![ ](PicSpacer.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    the [C++11](Cpp11.md) its ranged [for](CppFor.md)-loop
12. ![ ](PicSpacer.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    the [C++11](Cpp11.md) [lambda expressions](CppLambdaExpression.md)

 

This makes the number of ways to do this sixty!

 

There are two more:

 

1.  Using an [algorithm](CppAlgorithm.md) to [std::plus](CppStdPlus.md)
    using [std::bind1st](CppStdBind1st.md)
2.  Using an [algorithm](CppAlgorithm.md) to [std::plus](CppStdPlus.md)
    using [std::bind2nd](CppStdBind2nd.md)

 

Total: there are sixty-two ways to add one to each element in a
std::vector!

 

P.S. an additional way (though beyond this exercise) is to use
assembler.

 

 

 

 

 

Question \#1: Write a program that tests which way is fastest
-------------------------------------------------------------

 

This kind of program is called a [benchmark](CppBenchmark.md).

 

There are too many ways to write one, so I'll just show you mine, which
can be found at [the cpp\_benchmark\_add\_one
GitHub](https://github.com/richelbilderbeek/cpp_benchmark_add_one).
There you will find the benchmark results in the Travis CI scripts.

 

 

 

 

 

 

