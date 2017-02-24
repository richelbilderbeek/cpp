

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Answer of exercise \#7: AddOne](CppExerciseAddOneAnswer.htm)
==============================================================================

 

This is the answer of [exercise \#7: AddOne](CppExerciseAddOne.htm).

 

 

 

 

Question \#0: How many correct ways are there to do this?
---------------------------------------------------------

 

The answer is a product of the number of ways to add one to an
[int](CppInt.htm) and the number of ways to iterate through a
[std::vector](CppVector.htm).

 

The number of ways to add one to an [int](CppInt.htm) are five:

 

1.  Assignment 1st (x=1+x)
2.  Assignment 2nd (x=x+1)
3.  Increase (x+=1)
4.  Post-increment (x++)
5.  Pre-increment (++x)

 

The number of ways to iterate through a [std::vector](CppVector.htm) are
twelve:

 

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    a [for](CppFor.htm)-loop, requesting the
    [std::vector](CppVector.htm) its size only once
2.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    a [for](CppFor.htm)-loop, requesting the
    [std::vector](CppVector.htm) its size every iteration
3.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [iterator](CppIterator.htm), requesting the
    [std::vector](CppVector.htm) its end only once
4.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [iterator](CppIterator.htm), requesting the
    [std::vector](CppVector.htm) its end only every iteration
5.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.htm) to a non-[inlined](CppInline.htm)
    [function](CppFunction.htm)
6.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.htm) to an [inlined](CppInline.htm)
    [function](CppFunction.htm)
7.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.htm) to a [functor](CppFunctor.htm) with
    a non-[inlined](CppInline.htm) operator()
8.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    an [algorithm](CppAlgorithm.htm) to a [functor](CppFunctor.htm) with
    an [inlined](CppInline.htm) operator()
9.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![Boost](PicBoost.png)
    Using [BOOST\_FOREACH](CppBOOST_FOREACH.htm)
10. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)![Boost](PicBoost.png)
    Using the [Boost](CppBoost.htm) [Lambda](CppLambda.htm)
    [library](CppLibrary.htm)
11. ![ ](PicSpacer.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    the [C++11](Cpp11.htm) its ranged [for](CppFor.htm)-loop
12. ![ ](PicSpacer.png)![C++11](PicCpp11.png)![STL](PicStl.png) Using
    the [C++11](Cpp11.htm) [lambda expressions](CppLambdaExpression.htm)

 

This makes the number of ways to do this sixty!

 

There are two more:

 

1.  Using an [algorithm](CppAlgorithm.htm) to [std::plus](CppPlus.htm)
    using [std::bind1st](CppBind1st.htm)
2.  Using an [algorithm](CppAlgorithm.htm) to [std::plus](CppPlus.htm)
    using [std::bind2nd](CppBind2nd.htm)

 

Total: there are sixty-two ways to add one to each element in a
std::vector!

 

P.S. an additional way (though beyond this exercise) is to use
assembler.

 

 

 

 

 

Question \#1: Write a program that tests which way is fastest
-------------------------------------------------------------

 

This kind of program is called a [benchmark](CppBenchmark.htm).

 

There are too many ways to write one, so I'll just show you mine, which
can be found at [the cpp\_benchmark\_add\_one
GitHub](https://github.com/richelbilderbeek/cpp_benchmark_add_one).
There you will find the benchmark results in the Travis CI scripts.

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
