
 

 

 

 

 

([C++](Cpp.md)) [std::vector](CppVector.md)
=============================================

 

[STL](CppStl.md) [container](CppContainer.md) for storing
[instances](CppInstance.md) of any [data type](CppDataType.md).

 

Advantages of a [std::vector](CppVector.md) over an
[array](CppArray.md) are:

1.  [std::vector](CppVector.md) allocates memory from the free space
    when increasing in size
2.  [std::vector](CppVector.md) is not a [pointer](CppPointer.md) in
    disguise \[3\]
3.  [std::vector](CppVector.md) can increase/decrease in size run-time
4.  [std::vector](CppVector.md) can do range checking (using at())

 

 

 

 

 

The erase-remove idiom
----------------------

 

Calling [std::remove](CppRemove.md) to remove a certain value from a
[std::vector](CppVector.md) does not change a
[std::vector](CppVector.md) its size. [std::remove](CppRemove.md) does
[return](CppReturn.md) an [iterator](CppIterator.md) to where the
removed elements are put. This [iterator](CppIterator.md) can be used
to call [std::vector](CppVector.md) its 'erase' member function. These
two operations are called the erase-remove idiom.

 

Use the erase-remove idiom the really remove a value from a
[std::vector](CppVector.md).

 

 

 

 

 

[Examples](CppExample.md)
--------------------------

 

-   [std::vector example 1: basics](CppVectorExample1.md)
-   [std::vector example 2: erase-remove idiom](CppVectorExample2.md)
-   [std::vector example 3: C++11 emplace member
    function](CppVectorExample3.md)
-   [std::vector example 4: remove an element with preserving the
    order](CppVectorExample4.md)
-   [std::vector example 5: returning a member std::vector that is not a
    copy](CppVectorExample5.md)

 

 

 

 

 

[std::vector](CppVector.md) [code snippets](CppCodeSnippets.md)
-----------------------------------------------------------------

 

Note that among these are also more general
[container](CppContainer.md) [code snippets](CppCodeSnippets.md).

 

1.  [AllAboutEqual, check if all doubles in a std::vector are about
    equal](CppAllAboutEqual.md)
2.  [Append two std::vectors, Append](CppAppend.md)
3.  [Append, append two std::vectors](CppAppend.md)
4.  [Check if all doubles in a std::vector are about equal,
    AllAboutEqual](CppAllAboutEqual.md)
5.  [CreateVector](CppCreateVector.md), create a std::vector from three
    values
6.  [Convert Matrix&lt;X&gt; to Matrix&lt;Y&gt;,
    ConvertMatrix](CppConvertMatrix.md)
7.  [Convert std::vector&lt;std::vector&lt;X&gt; &gt; to
    std::vector&lt;std::vector&lt;Y&gt; &gt;,
    ConvertMatrix](CppConvertMatrix.md)
8.  [Convert two 2D std::vector&lt;X&gt; to 2D std::vector&lt;Y&gt;,
    ConvertMatrix](CppConvertMatrix.md)
9.  [ConvertMatrix, convert Matrix&lt;X&gt; to
    Matrix&lt;Y&gt;](CppConvertMatrix.md)
10. [ConvertMatrix, convert std::vector&lt;std::vector&lt;X&gt; &gt; to
    std::vector&lt;std::vector&lt;Y&gt; &gt;](CppConvertMatrix.md)
11. [ConvertMatrix, convert two 2D std::vector&lt;X&gt; to 2D
    std::vector&lt;Y&gt;](CppConvertMatrix.md)
12. [CoutVector, std::cout on a std::vector](CppCoutVector.md)
13. [GetIncVector, get a std::vector of incremented values (for example
    with values 0,1,2,3,etc)](CppGetIncVector.md)
14. [GetLongestString, find the length of the std::string with the most
    characters in a container](CppGetLongestStringLength.md)
15. [GetShortestString, find the length of the std::string with the
    least characters in a container](CppGetShortestStringLength.md)
16. [HugeVector, class that can contain more elements than
    std::vector](CppHugeVector.md)
17. [LoopReader, reading a container looped](CppLoopReader.md)
18. [RandomShuffle, shuffle a std::vector to a random
    order](CppRandomShuffle.md)
19. [Read and write a std::vector from/to a
    std::stream](CppVectorToStream.md)
20. [Read and write two std::vectors from/to a
    std::stream](CppVectorsToStream.md)
21. [Reading a container looped, LoopReader](CppLoopReader.md)
22. [Save a container to file, SaveContainer](CppSaveContainer.md)
23. [SaveContainer, save a container to file](CppSaveContainer.md)
24. [SumStringLength, sum the lengths of std::strings irn a
    container](CppSumStringLength.md)
25. [Shuffle a std::vector to a random order,
    RandomShuffle](CppRandomShuffle.md)
26. [Sort a std::vector, SortVector](CppSortVector.md)
27. [SortVector, sort a std::vector](CppSortVector.md)
28. [Write and read a std::vector to/from a
    std::stream](CppVectorToStream.md)
29. [Write and read two std::vectors to/from a
    std::stream](CppVectorsToStream.md)
30. [std::cout on a std::vector, CoutVector](CppCoutVector.md)

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer using a [std::vector](CppVector.md) over an
    [array](CppArray.md) \[1-4\]
-   Use [std::vector](CppVector.md) as your default
    [container](CppContainer.md) \[5\]
-   Don't use [iterators](CppIterator.md) into a resized
    [std::vector](CppVector.md) or [std::deque](CppDeque.md) \[6\]
-   Don't assume [performance](CppPerformance.md) benefits
    from reserve() without measurements \[7\]
-   When necessary, use reserve() to make
    [performance](CppPerformance.md) predictable \[8\]
-   Do not assume that [operator\[\]](CppOperatorIndex.md) range checks
    \[9\]
-   Use the 'at' [member function](CppMemberFunction.md) when you need
    guaranteed range checks \[10\]
-   Use emplace() for notational convenience \[11\]
-   Use emplace() to avoid having to pre-initialize
    [variables](CppVariable.md) \[12\]

 

 

 

 

 

External links
--------------

 

-   [CodePedia page about
    std::vector](http://www.codepedia.com/CppVector)
-   [SGI page about
    std::vector](http://www.sgi.com/tech/stl/Vector.html)
-   [Cplusplus.com page about
    std::vector](http://www.cplusplus.com/reference/stl/vector/vector)

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 76: 'Use vector by default. Otherwise, choose an
    appropriate container'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 77: 'Use vector and string instead of arrays'.
3.  [Marshall Cline](CppMarshallCline.md), [Greg
    Lomow](CppGregLomow.md) and [Mike Girou](CppMikeGirou.md).
    C++ FAQs. ISBN: 0-201-3098301. FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil').
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter C.14.11
    'Prefer vector over array'.
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[2\] Use vector as your default container'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[21\] Don't use iterators into a resized vector
    or deque'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[19\] Don't assume performance benefits
    from reserve() without measurements'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[22\] When necessary, use reserve() to make
    performance predictable'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[23\] Do not assume that \[\] range checks'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[24\] Use at() when you need guaranteed range
    checks'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[25\] Use emplace() for notational convenience'
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 925: '\[27\] Use emplace() to avoid having to
    pre-initialize variables'

 

 

 

 

 

 

