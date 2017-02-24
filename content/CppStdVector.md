



 

 

 

 

 

([C++](Cpp.htm)) [std::vector](CppVector.htm)
=============================================

 

[STL](CppStl.htm) [container](CppContainer.htm) for storing
[instances](CppInstance.htm) of any [data type](CppDataType.htm).

 

Advantages of a [std::vector](CppVector.htm) over an
[array](CppArray.htm) are:

1.  [std::vector](CppVector.htm) allocates memory from the free space
    when increasing in size
2.  [std::vector](CppVector.htm) is not a [pointer](CppPointer.htm) in
    disguise \[3\]
3.  [std::vector](CppVector.htm) can increase/decrease in size run-time
4.  [std::vector](CppVector.htm) can do range checking (using at())

 

 

 

 

 

The erase-remove idiom
----------------------

 

Calling [std::remove](CppRemove.htm) to remove a certain value from a
[std::vector](CppVector.htm) does not change a
[std::vector](CppVector.htm) its size. [std::remove](CppRemove.htm) does
[return](CppReturn.htm) an [iterator](CppIterator.htm) to where the
removed elements are put. This [iterator](CppIterator.htm) can be used
to call [std::vector](CppVector.htm) its 'erase' member function. These
two operations are called the erase-remove idiom.

 

Use the erase-remove idiom the really remove a value from a
[std::vector](CppVector.htm).

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [std::vector example 1: basics](CppVectorExample1.htm)
-   [std::vector example 2: erase-remove idiom](CppVectorExample2.htm)
-   [std::vector example 3: C++11 emplace member
    function](CppVectorExample3.htm)
-   [std::vector example 4: remove an element with preserving the
    order](CppVectorExample4.htm)
-   [std::vector example 5: returning a member std::vector that is not a
    copy](CppVectorExample5.htm)

 

 

 

 

 

[std::vector](CppVector.htm) [code snippets](CppCodeSnippets.htm)
-----------------------------------------------------------------

 

Note that among these are also more general
[container](CppContainer.htm) [code snippets](CppCodeSnippets.htm).

 

1.  [AllAboutEqual, check if all doubles in a std::vector are about
    equal](CppAllAboutEqual.htm)
2.  [Append two std::vectors, Append](CppAppend.htm)
3.  [Append, append two std::vectors](CppAppend.htm)
4.  [Check if all doubles in a std::vector are about equal,
    AllAboutEqual](CppAllAboutEqual.htm)
5.  [CreateVector](CppCreateVector.htm), create a std::vector from three
    values
6.  [Convert Matrix&lt;X&gt; to Matrix&lt;Y&gt;,
    ConvertMatrix](CppConvertMatrix.htm)
7.  [Convert std::vector&lt;std::vector&lt;X&gt; &gt; to
    std::vector&lt;std::vector&lt;Y&gt; &gt;,
    ConvertMatrix](CppConvertMatrix.htm)
8.  [Convert two 2D std::vector&lt;X&gt; to 2D std::vector&lt;Y&gt;,
    ConvertMatrix](CppConvertMatrix.htm)
9.  [ConvertMatrix, convert Matrix&lt;X&gt; to
    Matrix&lt;Y&gt;](CppConvertMatrix.htm)
10. [ConvertMatrix, convert std::vector&lt;std::vector&lt;X&gt; &gt; to
    std::vector&lt;std::vector&lt;Y&gt; &gt;](CppConvertMatrix.htm)
11. [ConvertMatrix, convert two 2D std::vector&lt;X&gt; to 2D
    std::vector&lt;Y&gt;](CppConvertMatrix.htm)
12. [CoutVector, std::cout on a std::vector](CppCoutVector.htm)
13. [GetIncVector, get a std::vector of incremented values (for example
    with values 0,1,2,3,etc)](CppGetIncVector.htm)
14. [GetLongestString, find the length of the std::string with the most
    characters in a container](CppGetLongestStringLength.htm)
15. [GetShortestString, find the length of the std::string with the
    least characters in a container](CppGetShortestStringLength.htm)
16. [HugeVector, class that can contain more elements than
    std::vector](CppHugeVector.htm)
17. [LoopReader, reading a container looped](CppLoopReader.htm)
18. [RandomShuffle, shuffle a std::vector to a random
    order](CppRandomShuffle.htm)
19. [Read and write a std::vector from/to a
    std::stream](CppVectorToStream.htm)
20. [Read and write two std::vectors from/to a
    std::stream](CppVectorsToStream.htm)
21. [Reading a container looped, LoopReader](CppLoopReader.htm)
22. [Save a container to file, SaveContainer](CppSaveContainer.htm)
23. [SaveContainer, save a container to file](CppSaveContainer.htm)
24. [SumStringLength, sum the lengths of std::strings irn a
    container](CppSumStringLength.htm)
25. [Shuffle a std::vector to a random order,
    RandomShuffle](CppRandomShuffle.htm)
26. [Sort a std::vector, SortVector](CppSortVector.htm)
27. [SortVector, sort a std::vector](CppSortVector.htm)
28. [Write and read a std::vector to/from a
    std::stream](CppVectorToStream.htm)
29. [Write and read two std::vectors to/from a
    std::stream](CppVectorsToStream.htm)
30. [std::cout on a std::vector, CoutVector](CppCoutVector.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer using a [std::vector](CppVector.htm) over an
    [array](CppArray.htm) \[1-4\]
-   Use [std::vector](CppVector.htm) as your default
    [container](CppContainer.htm) \[5\]
-   Don't use [iterators](CppIterator.htm) into a resized
    [std::vector](CppVector.htm) or [std::deque](CppDeque.htm) \[6\]
-   Don't assume [performance](CppPerformance.htm) benefits
    from reserve() without measurements \[7\]
-   When necessary, use reserve() to make
    [performance](CppPerformance.htm) predictable \[8\]
-   Do not assume that [operator\[\]](CppOperatorIndex.htm) range checks
    \[9\]
-   Use the 'at' [member function](CppMemberFunction.htm) when you need
    guaranteed range checks \[10\]
-   Use emplace() for notational convenience \[11\]
-   Use emplace() to avoid having to pre-initialize
    [variables](CppVariable.htm) \[12\]

 

 

 

 

 

External links
--------------

 

-   [CodePedia page about
    std::vector](http://www.codepedia.com/CppVector)
-   [SGI page about
    std::vector](http://www.sgi.com/tech/stl/Vector.html)
-   [Cplusplus.com page about
    std::vector](http://www.cplusplus.com/reference/stl/vector/vector)

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 76: 'Use vector by default. Otherwise, choose an
    appropriate container'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 77: 'Use vector and string instead of arrays'.
3.  [Marshall Cline](CppMarshallCline.htm), [Greg
    Lomow](CppGregLomow.htm) and [Mike Girou](CppMikeGirou.htm).
    C++ FAQs. ISBN: 0-201-3098301. FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil').
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter C.14.11
    'Prefer vector over array'.
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[2\] Use vector as your default container'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[21\] Don't use iterators into a resized vector
    or deque'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[19\] Don't assume performance benefits
    from reserve() without measurements'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[22\] When necessary, use reserve() to make
    performance predictable'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[23\] Do not assume that \[\] range checks'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[24\] Use at() when you need guaranteed range
    checks'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 924: '\[25\] Use emplace() for notational convenience'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 31.6.
    Advice. page 925: '\[27\] Use emplace() to avoid having to
    pre-initialize variables'

 

 

 

 

 





 



