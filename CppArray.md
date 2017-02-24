[Go back to Richel Bilderbeek's homepage](index.htm).

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [array](CppArray.htm)
======================================

 

[array](CppArray.htm) is one of these topics:

-   ![C++98](PicCpp98.png)![ ](PicSpacer.png) A plain array
-   ![C++98](PicCpp98.png)![TR1](PicCppTr1.png)
    [std::tr1::array](CppTr1Array.htm)
-   ![C++98](PicCpp98.png)![Boost](PicBoost.png)
    [boost::array](CppBoostArray.htm)
-   ![C++11](PicCpp11.png)![ ](PicSpacer.png)
    [std::array](CppStdArray.htm)

 

See [array/std::array/boost::array example 1:
comparison](CppArrayExample1.htm) for a comparison.

 

 

 

 

![C++98](PicCpp98.png)![ ](PicSpacer.png) A plain [array](CppArray.htm)
-----------------------------------------------------------------------

 

An [array](CppArray.htm) is a collection of elements that can be
accessed by the [index operator](CppOperatorIndex.htm).

 

  ----------------------------------------------------------------
  ` int myArray[10]; //Create an array that stores ten integers`
  ----------------------------------------------------------------

 

Prefer a [std::vector](CppVector.htm) (or perhaps std::array) over an
[array](CppArray.htm) by default \[1-4\]. Consider not using
[arrays](CppArray.htm) in the [interface](CppInterface.htm) of a
[class](CppClass.htm).

 

The first element of an [array](CppArray.htm) is at index zero.

 

There are two kinds of [arrays](CppArray.htm):

1.  [Static arrays](CppArrayStatic.htm): size known at compile-time, for
    example 'int v\[10\]'
2.  [Dynamically allocated arrays](CppArrayDynamic.htm): size gets
    determined at run-time, for example 'int \* v')

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Take care not to write beyond the bounds of an [array](CppArray.htm)
    \[5,7\]
-   Avoid multidimensional [arrays](CppArray.htm); define suitable
    [containers](CppContainer.htm) instead \[8\]
-   Use [containers](CppContainer.htm) rather than plain
    [arrays](CppArray.htm) \[9\]
-   Use [std::string](CppString.htm) rather than zero-terminated
    [arrays](CppArray.htm) of [chars](CppChar.htm) \[10\]
-   Avoid passing arrays as pointers \[11\]
-   Use [std::vector](CppStdVector.htm) and
    [std::string](CppStdString.htm) instead of [arrays](CppArray.htm)
    \[15\] (note: this was before [std::array](CppStdArray.htm) was in
    the [STL](CppStl.htm))
-   Prefer [std::array](CppStdArray.htm) to built-in
    [arrays](CppArray.htm) \[12-14,16\]

 

 

 

 

 

[Examples](CppExamples.htm)
---------------------------

 

-   [Array example 1: create different array types (static, dynamic,
    std::array, boost::array)](CppArrayExample1.htm)
-   [Array example 2: array of Derived falls back to an array of Base
    without warnings](CppArrayExample2.htm)
-   [Array example 3: passing an array as a pointer and size cannot be
    checked to be correct](CppArrayExample3.htm)
-   [Array example 4: benchmark comparing speed of a plain array with a
    std::vector](CppArrayExample4.htm)
-   [Array example 5: benchmark comparing speed of a plain array with a
    std::array](CppArrayExample5.htm)
-   [Array example 6: passing an array as T\* or T\[\] is
    equivalent](CppArrayExample6.htm)
-   [Array example 7: creating an array of negative size is accepted
    without warning](CppArrayExample7.htm)
-   [Array example 8: an array is not a regular
    type](CppArrayExample8.htm)

 

 

 

 

 

![C++98](PicCpp98.png)![TR1](PicCppTr1.png) [std::tr1::array](CppTr1Array.htm)
------------------------------------------------------------------------------

 

See [std::tr1::array](CppTr1Array.htm).

 

 

 

 

 

![C++98](PicCpp98.png)![Boost](PicBoost.png) [boost::array](CppBoostArray.htm)
------------------------------------------------------------------------------

 

See [boost::array](CppBoostArray.htm).

 

 

 

 

 

![C++11](PicCpp11.png)![ ](PicSpacer.png) [std::array](CppStdArray.htm)
-----------------------------------------------------------------------

 

See [std::array](CppStdArray.htm).

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter 5.8.4 'Use
    vector and valarray rather than built-in (C-style) arrays'
2.  [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    76: 'Use vector by default. Otherwise choose an appropriate
    container'
3.  [Marshall Cline](CppMarshallCline.htm), [Greg
    Lomow](CppGregLomow.htm) and [Mike Girou](CppMikeGirou.htm).
    C++ FAQs. ISBN: 0-201-3098301, FAQ 28.02: 'Are arrays good or evil?'
    (Answer: 'Arrays are evil'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 Chapter C.14.11 'Prefer
    vector over array'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). ISBN: 0-201-88954-4 5.8.2: 'Take care not to
    write beyond the bounds of an array'
6.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 97: 'Arrays shall not be used
    in interfaces. Instead, the Array class should be used.'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[3\] Take care not to write beyond the bounds of
    an array'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[4\] Avoid multidimensional arrays; define
    suitable containers instead'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[6\] Use containers (e.g., vector, array,
    and valarray) rather than built-in (C-style) arrays'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 7.8.
    Advice. page 199: '\[7\] Use string rather than zero-terminated
    arrays of chars'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 12.7.
    Advice. page 341: '\[15\] Avoid passing arrays as pointers'
12. [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer std::array to
    Built-in Arrays'
13. [Scott Meyers](CppScottMeyers.htm). Effective Modern C++
    (1st Edition). 2014. ISBN: 978-1-491-90399-5. Item 1, page 17: 'Of
    course, as a modern C++ developer, you'd naturally preder a
    std::array to a built-in array'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.11: 'Prefer array over built-in
    arrays'
15. [Herb Sutter](CppHerbSutter.htm) and [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. ISBN: 0-32-111358-6. Chapter
    77: 'Use vector and string instead of arrays'
16. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 34.7.
    Advice. page 1007: '\[2\] Prefer array over built-in arrays'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

[Go back to Richel Bilderbeek's homepage](index.htm).

 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
