# ([C++](Cpp.md)) [Header file](CppHeaderFile.md)

[Header files](CppHeaderFile.md) contain the
[declarations](CppDeclaration.md) of [functions](CppFunction.md) and
[classes](CppClass.md).

[Header files](CppHeaderFile.md) commonly have the .h and .hpp filename
extensions.

To use a [header file](CppHeaderFile.md), it must be
[\#included](CppInclude.md) in the source code.

```c++
#include <iostream>
#include "Widget.h"
 
int main()
{
  Widget w;
  std::cout << "Hello world\n";
}
```

A [header (.h) file](CppHeaderFile.md) can (and commonly does) start
with an [\#include guard](CppIncludeGuard.md). The combination of a
[header (.h) file](CppHeaderFile.md) and an [implementation (.cpp)
file](CppImplementationFile.md) is called a [unit](CppUnit.md).

## [Examples](CppExample.md)

This example is copied from [17].

```c++
//radio.h
#ifndef INCLUDED_RADIO
#define INCLUDED_RADIO

int z;                              // illegal: external data definition
extern int LENGTH = 10;             // illegal: external data definition
const int WIDTH = 5;                // avoid: constant data definition
static int y;                       // avoid: static data definition
static void func() {/*...*/}        // avoid: static function definition

class Radio
{
    static int s_count;             // fine: static member declaration
    static const double S_PI;       // fine: static const member declaration
    int d_size;                     // fine: member data definition
    // ...
  public:
    int size() const;               // fine: member function declaration
    // ...
};                                  // fine: class definition

inline int Radio::size() const
{
    return d_size;
}                                   // fine: inline function definition

int Radio::s_count;                 // illegal: static member definition

double Radio::S_PI = 3.14159265358; // illegal: static const member definition

int Radio::size() const { /*...*/ } // illegal: member function definition

#endif // INCLUDED_RADIO
```

## Standard [header files](CppHeaderFile.md)

The [STL](CppStl.md) consists out of the following [header
files](CppHeaderFile.md) \[3\]\[4\]:

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [algorithm](CppAlgorithmH.md)
2.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [array](CppArrayH.md)
3.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [atomic](CppAtomicH.md)
4.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [bitset](CppBitsetH.md)
5.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cassert](CppCassertH.md)
6.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [ccomplex](CppCcomplexH.md)
7.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cctype](CppCctypeH.md)
8.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cerrno](CppCerrnoH.md)
9.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cfenv](CppCfenvH.md)
10. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cfloat](CppCfloatH.md)
11. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [chrono](CppChronoH.md)
12. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [cinttypes](CppCinttypesH.md)
13. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ciso646](CppCiso646H.md)
14. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [climits](CppClimitsH.md)
15. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [clocale](CppClocaleH.md)
16. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cmath](CppCmathH.md)
17. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [codecvt](CppCodecvtH.md)
18. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [complex](CppComplexH.md)
19. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [condition\_variable](CppCondition_variableH.md)
20. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [csetjmp](CppCsetjmpH.md)
21. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [csignal](CppCsignalH.md)
22. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [cstdalign](CppCstdalignH.md)
23. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstdarg](CppCstdargH.md)
24. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [cstdbool](CppCstdboolH.md)
25. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstddef](CppCstddefH.md)
26. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstdint](CppCstdintH.md)
27. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstdio](CppCstdioH.md)
28. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstlib](CppCstdlibH.md)
29. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstring](CppCstringH.md)
30. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ctime](CppCtimeH.md)
31. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [complex](CppComplexH.md)
32. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ctgmath](CppCtgmathH.md)
33. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ctime](CppCtimeH.md)
34. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cuchar](CppCucharH.md)
35. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cwchar](CppCwcharH.md)
36. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cwctype](CppCwctypeH.md)
37. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [deque](CppDequeH.md)
38. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [exception](CppExceptionH.md)
39. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [forward\_list](CppForward_listH.md)
40. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [fstream](CppFstreamH.md)
41. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [functional](CppFunctionalH.md)
42. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [future](CppFutureH.md)
43. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [initializer\_list](CppInitializer_listH.md)
44. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iomanip](CppIomanipH.md)
45. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [ios](CppIosH.md)
46. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iosfwd](CppIosfwdH.md)
47. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iostream](CppIostreamH.md)
48. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [istream](CppIstreamH.md)
49. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iterator](CppIteratorH.md)
50. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [limits](CppLimitsH.md)
51. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [list](CppListH.md)
52. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [locale](CppLocaleH.md)
53. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [map](CppMapH.md)
54. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [memory](CppMemoryH.md)
55. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [mutex](CppMutexH.md)
56. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [new](CppNewH.md)
57. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [numeric](CppNumericH.md)
58. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [ostream](CppOstreamH.md)
59. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [queue](CppQueueH.md)
60. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [random](CppStdRand.mdomH.md)
61. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ratio](CppRatioH.md)
62. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [regex](CppRegexH.md)
63. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [set](CppSetH.md)
64. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [sstream](CppSstreamH.md)
65. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [stack](CppStackH.md)
66. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [stdexcept](CppStdexceptH.md)
67. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [streambuf](CppStreambufH.md)
68. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [string](CppStringH.md)
69. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [strstream](CppStrstreamH.md)
70. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [system\_error](CppSystem_errorH.md)
71. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [thread](CppThreadH.md)
72. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [tuple](CppTupleH.md)
73. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [typeindex](CppTypeindexH.md)
74. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [typeinfo](CppTypeinfoH.md)
75. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [type\_traits](CppType_traitsH.md)
76. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [utility](CppUtilityH.md)
77. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [valarray](CppValarrayH.md)
78. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [vector](CppVectorH.md)
79. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [unordered\_map](CppUnordered_mapH.md)
80. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [unordered\_set](CppUnordered_setH.md)

## [Advice](CppAdvice.md)

-   Make [header files](CppHeaderFile.md) self-sufficient \[1,14\]
-   Don't put a [using](CppUsing.md)-directive in a [header file](CppHeaderFile.md) [18,19] 
-   Avoid non-[inline](CppInline.md) [function](CppFunction.md)
    [definitions](CppDefinition.md) in [header
    files](CppHeaderFile.md) \[7,9,12\]
-   [\#include](CppInclude.md) C [header files](CppHeaderFile.md) in
    [namespace](CppNamespace.md) to avoid [global](CppGlobal.md)
    names \[13\]. For example, [\#include](CppInclude.md)
    [cmath](CppCmathH.md) instead of [math.h](CppMathH.md)
-   [include](CppInclude.md) user-defined [headers](CppHeaderFile.md)'
    names in quotes, [include](CppInclude.md) [STL](CppStl.md)
    [headers](CppHeaderFile.md)' names in angle brackets \[15\]
-   Short [functions](CppFunction.md) should be [inlined](CppInline.md) and [defined](CppDefinition.md) in [headers](CppHeaderFile.md) [16]
-   Large [functions](CppFunction.md) should be [declared](CppDeclaration.md) in [headers](CppHeaderFiel.md) and [defined](CppDefinition.md) in source files [16]

## [References](CppReferences.md)

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 23: 'Make header files self-sufficient'.
2.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 24: 'Always write interal \#include guards. Never write
    external \#include guards'.
3.  International C++ Standard, table 11
4.  Draft of C++0x Standard, table 14 and 15, ISO/IEC JTC1 SC22 WG21 N 3290, Date: 2011-04-11, ISO/IEC FDIS 14882, ISO/IEC JTC1 SC22
5.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. 
    Chapter 1.1.3, figure 1-3, page 28
6.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. 
    Section D.2: Major Design Rules, Chapter 2, page 820: 'Avoid free functions (except operator functions) at
    file scope in .h files'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 9.5, 
    item 4: 'Avoid non-inline function definitions in headers'
8.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. 
     Section 2.5, page 85: 'Place a
    redundant (external) include guard around each preprocessor include
    directive in every header file'
9.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 39: 'Header files (\*.h) will not
    contain non-const variable definitions or function definitions.'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[1\] Use header files to represent interfaces
    and to emphasize logical structure'
11. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[2\] \#include a header in the source file that
    implements its functions'
12. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[4\] Avoid non-inline function definitions in
    headers'
13. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[8\] \#include C headers in namespace to avoid
    global names'
14. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[9\] Make headers self-contained'
15. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition). 2014. ISBN: 978-0-13-343985-4. 
    Chapter 3.6, Error-Prevention
    Tip 3.3. page 57: 'To ensure that the preprocessor can locate
    headers correctly, \#include preprocessing directives should place
    user-defined headers names in quotes \[...\] and place C++ Standard
    Library headers names in angle brackets \[...\]'
16. Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 7.2.3.2: 'Short functions should be inline and defined in headers. Large functions should be declared in headers and defined in source files'
17. [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. 
    Chapter 1.1.3, Figure 1-3, page 28
18. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5.
    Advice. page 417: '\[11\] Don't put a using-directive in a header
    file'
19. [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 59: 'Don't write namespace usings in a header file or before an #include'
