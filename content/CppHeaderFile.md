



 

 

 

 

 

([C++](Cpp.htm)) [Header file](CppHeaderFile.htm)
=================================================

 

[Header files](CppHeaderFile.htm) contain the
[declarations](CppDeclaration.htm) of [functions](CppFunction.htm) and
[classes](CppClass.htm).

 

[Header files](CppHeaderFile.htm) commonly have the .h and .hpp filename
extensions.

 

To use a [header file](CppHeaderFile.htm), it must be
[\#included](CppInclude.htm) in the source code.

 

  --------------------------------------------------------------------------------------------------------------------
  ` #include <iostream> #include "Widget.h"   int main() {   Widget w;   std::cout << "Hello world" << std::endl; }`
  --------------------------------------------------------------------------------------------------------------------

 

A [header (.h) file](CppHeaderFile.htm) can (and commonly does) start
with an [\#include guard](CppIncludeGuard.htm). The combination of a
[header (.h) file](CppHeaderFile.htm) and an [implementation (.cpp)
file](CppImplementationFile.htm) is called a [unit](CppUnit.htm).

 

 

 

 

 

 

[Examples](CppExample.htm)
--------------------------

 

-   [Header file example 1: what does and does not belong in a header
    file](CppHeaderFileExample1.htm) (from \[5\])

 

 

 

 

 

Standard [header files](CppHeaderFile.htm)
------------------------------------------

 

The [STL](CppStl.htm) consists out of the following [header
files](CppHeaderFile.htm) \[3\]\[4\]:

 

1.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [algorithm](CppAlgorithmH.htm)
2.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [array](CppArrayH.htm)
3.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [atomic](CppAtomicH.htm)
4.  ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [bitset](CppBitsetH.htm)
5.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cassert](CppCassertH.htm)
6.  ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [ccomplex](CppCcomplexH.htm)
7.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cctype](CppCctypeH.htm)
8.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cerrno](CppCerrnoH.htm)
9.  ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cfenv](CppCfenvH.htm)
10. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cfloat](CppCfloatH.htm)
11. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [chrono](CppChronoH.htm)
12. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [cinttypes](CppCinttypesH.htm)
13. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ciso646](CppCiso646H.htm)
14. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [climits](CppClimitsH.htm)
15. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [clocale](CppClocaleH.htm)
16. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cmath](CppCmathH.htm)
17. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [codecvt](CppCodecvtH.htm)
18. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [complex](CppComplexH.htm)
19. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [condition\_variable](CppCondition_variableH.htm)
20. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [csetjmp](CppCsetjmpH.htm)
21. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [csignal](CppCsignalH.htm)
22. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [cstdalign](CppCstdalignH.htm)
23. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstdarg](CppCstdargH.htm)
24. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [cstdbool](CppCstdboolH.htm)
25. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstddef](CppCstddefH.htm)
26. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstdint](CppCstdintH.htm)
27. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstdio](CppCstdioH.htm)
28. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstlib](CppCstdlibH.htm)
29. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cstring](CppCstringH.htm)
30. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ctime](CppCtimeH.htm)
31. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [complex](CppComplexH.htm)
32. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ctgmath](CppCtgmathH.htm)
33. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ctime](CppCtimeH.htm)
34. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cuchar](CppCucharH.htm)
35. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cwchar](CppCwcharH.htm)
36. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [cwctype](CppCwctypeH.htm)
37. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [deque](CppDequeH.htm)
38. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [exception](CppExceptionH.htm)
39. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [forward\_list](CppForward_listH.htm)
40. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [fstream](CppFstreamH.htm)
41. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [functional](CppFunctionalH.htm)
42. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [future](CppFutureH.htm)
43. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [initializer\_list](CppInitializer_listH.htm)
44. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iomanip](CppIomanipH.htm)
45. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [ios](CppIosH.htm)
46. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iosfwd](CppIosfwdH.htm)
47. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iostream](CppIostreamH.htm)
48. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [istream](CppIstreamH.htm)
49. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [iterator](CppIteratorH.htm)
50. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [limits](CppLimitsH.htm)
51. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [list](CppListH.htm)
52. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [locale](CppLocaleH.htm)
53. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [map](CppMapH.htm)
54. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [memory](CppMemoryH.htm)
55. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [mutex](CppMutexH.htm)
56. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [new](CppNewH.htm)
57. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [numeric](CppNumericH.htm)
58. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [ostream](CppOstreamH.htm)
59. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [queue](CppQueueH.htm)
60. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [random](CppRandomH.htm)
61. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [ratio](CppRatioH.htm)
62. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [regex](CppRegexH.htm)
63. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [set](CppSetH.htm)
64. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [sstream](CppSstreamH.htm)
65. ![C++98](PicCpp98.png)![C++11](PicCpp11.png) [stack](CppStackH.htm)
66. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [stdexcept](CppStdexceptH.htm)
67. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [streambuf](CppStreambufH.htm)
68. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [string](CppStringH.htm)
69. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [strstream](CppStrstreamH.htm)
70. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [system\_error](CppSystem_errorH.htm)
71. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [thread](CppThreadH.htm)
72. ![ ](PicSpacer.png)![C++11](PicCpp11.png) [tuple](CppTupleH.htm)
73. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [typeindex](CppTypeindexH.htm)
74. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [typeinfo](CppTypeinfoH.htm)
75. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [type\_traits](CppType_traitsH.htm)
76. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [utility](CppUtilityH.htm)
77. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [valarray](CppValarrayH.htm)
78. ![C++98](PicCpp98.png)![C++11](PicCpp11.png)
    [vector](CppVectorH.htm)
79. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [unordered\_map](CppUnordered_mapH.htm)
80. ![ ](PicSpacer.png)![C++11](PicCpp11.png)
    [unordered\_set](CppUnordered_setH.htm)

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Make [header files](CppHeaderFile.htm) self-sufficient \[1,14\]
-   Avoid non-[inline](CppInline.htm) [function](CppFunction.htm)
    [definitions](CppDefinition.htm) in [header
    files](CppHeaderFile.htm) \[7,9,12\]
-   [\#include](CppInclude.htm) C [header files](CppHeaderFile.htm) in
    [namespace](CppNamespace.htm) to avoid [global](CppGlobal.htm)
    names \[13\]. For example, [\#include](CppInclude.htm)
    [cmath](CppCmathH.htm) instead of [math.h](CppMathH.htm)
-   [include](CppInclude.htm) user-defined [headers](CppHeaderFile.htm)'
    names in quotes, [include](CppInclude.htm) [STL](CppStl.htm)
    [headers](CppHeaderFile.htm)' names in angle brackets \[15\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 23: 'Make header files self-sufficient'.
2.  [Herb Sutter](CppHerbSutter.htm), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.htm). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Item 24: 'Always write interal \#include guards. Never write
    external \#include guards'.
3.  International C++ Standard, table 11
4.  Draft of C++0x Standard, table 14 and 15, ISO/IEC JTC1 SC22 WG21 N
    3290, Date: 2011-04-11, ISO/IEC FDIS 14882, ISO/IEC JTC1 SC22
5.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 1.1.3, figure 1-3, page 28
6.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section D.2: Major Design Rules, Chapter
    2, page 820: 'Avoid free functions (except operator functions) at
    file scope in .h files'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Section 9.5, item
    4: 'Avoid non-inline function definitions in headers'
8.  [John Lakos](CppJohnLakos.htm). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Section 2.5, page 85: 'Place a
    redundant (external) include guard around each preprocessor include
    directive in every header file'
9.  Joint Strike Fighter Air Vehicle C++ Coding Standards for the System
    Development and Demonstration Program. Document Number 2RDU00001
    Rev C. December 2005. AV Rule 39: 'Header files (\*.h) will not
    contain non-const variable definitions or function definitions.'
10. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[1\] Use header files to represent interfaces
    and to emphasize logical structure'
11. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[2\] \#include a header in the source file that
    implements its functions'
12. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[4\] Avoid non-inline function definitions in
    headers'
13. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[8\] \#include C headers in namespace to avoid
    global names'
14. [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 15.5.
    Advice. page 444: '\[9\] Make headers self-contained'
15. Paul Deitel, Harvey Deitel. C++11 for programmers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 3.6, Error-Prevention
    Tip 3.3. page 57: 'To ensure that the preprocessor can locate
    headers correctly, \#include preprocessing directives should place
    user-defined headers names in quotes \[...\] and place C++ Standard
    Library headers names in angle brackets \[...\]'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
