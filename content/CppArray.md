
 

 

 

 

 

([C++](Cpp.md)) [array](CppArray.md)
======================================

 

[array](CppArray.md) is one of these topics:

-   ![C++98](PicCpp98.png)![ ](PicSpacer.png) A plain array
-   ![C++98](PicCpp98.png)![TR1](PicCppTr1.png)
    [std::tr1::array](CppTr1Array.md)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [boost::array](CppBoostArray.md)
-   ![C++11](PicCpp11.png)![ ](PicSpacer.png)
    [std::array](CppStdArray.md)

 

See [array/std::array/boost::array example 1:
comparison](CppArrayExample1.md) for a comparison.

 

 

 

 

![C++98](PicCpp98.png)![ ](PicSpacer.png) A plain [array](CppArray.md)
-----------------------------------------------------------------------

 

An [array](CppArray.md) is a collection of elements that can be
accessed by the [index operator](CppOperatorIndex.md).

 

  ----------------------------------------------------------------
  ` int myArray[10]; //Create an array that stores ten integers`
  ----------------------------------------------------------------

 

Prefer a [std::vector](CppVector.md) (or perhaps std::array) over an
[array](CppArray.md) by default \[1-4\]. Consider not using
[arrays](CppArray.md) in the [interface](CppInterface.md) of a
[class](CppClass.md).

 

The first element of an [array](CppArray.md) is at index zero.

 

There are two kinds of [arrays](CppArray.md):

1.  [Static arrays](CppArrayStatic.md): size known at compile-time, for
    example 'int v\[10\]'
2.  [Dynamically allocated arrays](CppArrayDynamic.md): size gets
    determined at run-time, for example 'int \* v')

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Take care not to write beyond the bounds of an [array](CppArray.md)
    \[5,7\]
-   Avoid multidimensional [arrays](CppArray.md); define suitable
    [containers](CppContainer.md) instead \[8\]
-   Use [containers](CppContainer.md) rather than plain
    [arrays](CppArray.md) \[9\]
-   Use [std::string](CppString.md) rather than zero-terminated
    [arrays](CppArray.md) of [chars](CppChar.md) \[10\]
-   Avoid passing arrays as pointers \[11\]
-   Use [std::vector](CppStdVector.md) and
    [std::string](CppStdString.md) instead of [arrays](CppArray.md)
    \[15\] (note: this was before [std::array](CppStdArray.md) was in
    the [STL](CppStl.md))
-   Prefer [std::array](CppStdArray.md) to built-in
    [arrays](CppArray.md) \[12-14,16\]

 

 

 

 

 

[Examples](CppExamples.md)
---------------------------

 

-   [Array example 1: create different array types (static, dynamic,
    std::array, boost::array)](CppArrayExample1.md)
-   [Array example 2: array of Derived falls back to an array of Base
    without warnings](CppArrayExample2.md)
-   [Array example 3: passing an array as a pointer and size cannot be
    checked to be correct](CppArrayExample3.md)
-   [Array example 4: benchmark comparing speed of a plain array with a
    std::vector](CppArrayExample4.md)
-   [Array example 5: benchmark comparing speed of a plain array with a
    std::array](CppArrayExample5.md)
-   [Array example 6: passing an array as T\* or T\[\] is
    equivalent](CppArrayExample6.md)
-   [Array example 7: creating an array of negative size is accepted
    without warning](CppArrayExample7.md)
-   [Array example 8: an array is not a regular
    type](CppArrayExample8.md)

 

 

 

 

 

![C++98](PicCpp98.png)![TR1](PicCppTr1.png) [std::tr1::array](CppTr1Array.md)
------------------------------------------------------------------------------

 

See [std::tr1::array](CppTr1Array.md).

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [boost::array](CppBoostArray.md)
------------------------------------------------------------------------------

 

See [boost::array](CppBoostArray.md).

 

 

 

 

 

![C++11](PicCpp11.png)![ ](PicSpacer.png) [std::array](CppStdArray.md)
-----------------------------------------------------------------------

 

See [std::array](CppStdArray.md).

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter 5.8.4 'Use
    vector and valarray rather than built-in (C-style) arrays'
2.  [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    76: 'Use vector by default. Otherwise choose an appropriate
    container'
3.  [Marshall Cline](CppMarshallCline.md), [Greg
    Lomow](CppGregLomow.md) and [Mike Girou](CppMikeGirou.md).
    C++ FAQs. ISBN: 0-201-3098301, FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter C.14.11 'Prefer
    vector over array'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 5.8.2: 'Take care not to
    write beyond the bounds of an array'
6.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 97: 'Arrays shall not be used
    in interfaces. Instead, the Array class should be used.'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[3\] Take care not to write beyond the bounds of
    an array'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[4\] Avoid multidimensional arrays; define
    suitable containers instead'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[6\] Use containers (e.g., vector, array,
    and valarray) rather than built-in (C-style) arrays'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[7\] Use string rather than zero-terminated
    arrays of chars'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[15\] Avoid passing arrays as pointers'
12. [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer std::array to
    Built-in Arrays'
13. [Scott Meyers](CppScottMeyers.md). Effective Modern C++
    (1st Edition). 2014. ISBN: 978-1-491-90399-5. Item 1, page 17: 'Of
    course, as a modern C++ developer, you'd naturally preder a
    std::array to a built-in array'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.11: 'Prefer array over built-in
    arrays'
15. [Herb Sutter](CppHerbSutter.md) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    77: 'Use vector and string instead of arrays'
16. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 34.7.
    Advice. page 1007: '\[2\] Prefer array over built-in arrays'

 

 

 

 

 

 

