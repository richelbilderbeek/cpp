

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [Library](CppLibrary.htm)
==========================================

 

A [library](CppLibrary.htm) is a collection of
[functions](CppFunction.htm) and [classes](CppClass.htm).

 

There are multiple types of [libraries](CppLibrary.htm) that can be
built:

-   [shared library](CppSharedLibrary.htm) (also called
    'dynamic library')
-   [static library](CppStaticLibrary.htm)

 

The [C++](Cpp.htm) standard [library](CppLibrary.htm) is called the
[Standard Template Library](CppStl.htm). The playground of the next
version of the [STL](CppStl.htm) is [the Boost library
collection.](CppBoost.htm).

 

[libraries](CppLibrary.htm) can be catagorized by their way of using
them in a project:

-   [Header](CppHeaderFile.htm)-only [libraries](CppLibrary.htm): just
    [\#include](CppInclude.htm) the [header files](CppHeaderFile.htm) to
    use it
-   [Implementation file (.cpp)](CppImplementationFile.htm) must be
    added to the project, next to an [\#include](CppInclude.htm) of the
    [header files](CppHeaderFile.htm) to use

 

The [STL](CppStl.htm) is [header](CppHeaderFile.htm)-only. Most
[Boost](CppBoost.htm) [libraries](CppLibrary.htm) are
[header](CppHeaderFile.htm)-only.

 

An easy-to-install library from an online repository is called a
[package](CppPackage.htm).

 

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   A [Library](CppLibrary.htm) doesn't have to be large or complicated
    to be useful \[8\]
-   Familiarize yourself with the [STL](CppStl.htm) and
    [Boost](CppBoost.htm) [libraries](CppLibrary.htm) \[1,2\]
-   Prefer using [libraries](CppLibrary.htm) over hand-crafted code
    \[3,5\]
-   A [library](CppLibrary.htm) shouldn't unilaterally terminate a
    program, but [throw](CppThrow.htm) an [exception](CppException.htm)
    instead \[6\]
-   A [library](CppLibrary.htm) shouldn't produce diagnostic output
    aimed at an end user, but [throw](CppThrow.htm) an
    [exception](CppException.htm) instead \[7\]

 

 

 

 

 

Overview of [C++](Cpp.htm) [libraries](CppLibrary.htm) (incomplete)
-------------------------------------------------------------------

 

In practice, these are the [libraries](CppLibrary.htm) I use or have
used, on the platforms indicated by the [pictograms](CppPictograms.htm).

 

 

1.  ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [ALGLIB](CppAlglib.htm):
    scientific computation
2.  ![N/A](PicBlack.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) Annie: [neural
    networks](CppNeuralNet.htm)
3.  ![OKAY](PicGreen.png)![Windows](PicWindows.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [apfloat](CppApfloat.htm):
    [arbitrary precision](CppArbitraryPrecision.htm) numbers
4.  ![OKAY](PicGreen.png)![BigInt](PicBigInt.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [BigInt](CppBigInt.htm): near-infinite size integer
5.  ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [Blitz++](CppBlitzpp.htm):
    scientific computation
6.  ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost](CppBoost.htm): many [libraries](CppLibrary.htm), next
    [STL](CppStl.htm)
7.  ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Accumulators](CppBoostAccumulators.htm): incremental
    calculation, statistical accumulators \[4\]
8.  ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Algorithm](CppBoostAlgorithm.htm):
    algorithms \[4\]
9.  ![OK](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Any](CppBoostAny.htm):
    Safe, generic container for single values of different value types
    \[4\]
10. ![OK](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Array](CppBoostArray.htm): STL compliant container wrapper
    for arrays of constant size \[4\]
11. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Boost.Asio](CppBoostAsio.htm): Portable networking
    \[4\]
12. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Assign](CppBoostAssign.htm): Filling containers \[4\]
13. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Atomic](CppBoostAtomic.htm): C++11-style atomic&lt;&gt; \[4\]
14. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Bimap](CppBoostBimap.htm): Bidirectional
    maps \[4\]
15. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Bind](CppBoostBind.htm): binders
16. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Call
    Traits](CppBoostCallTraits.htm): Defines types for passing
    parameters \[4\]
17. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Chrono](CppBoostChrono.htm): time utilities \[4\]
18. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Circular
    Buffer](CppBoostCircularBuffer.htm): Circular/ring/cyclic buffer
    \[4\]
19. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Compatibility](CppBoostCompatibility.htm): Help for
    non-conforming standard libraries \[4\]
20. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Compressed
    Pair](CppBoostCompressedPair.htm): Empty member optimization \[4\]
21. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.ConceptCheck](CppBoostConceptCheck.htm): Tools for generic
    programming \[4\]
22. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Container](CppBoostContainer.htm): Standard library
    containers and extensions \[4\]
23. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Context](CppBoostContext.htm): Context switching library
    \[4\]
24. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Boost.Conversion](CppBoostConversion.htm):
    Polymorphic and lexical casts \[4\]
25. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Coroutine](CppBoostCoroutine.htm): Coroutine library \[4\]
26. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.CRC](CppBoostCrc.htm):
    Cyclic Redundancy Code \[4\]
27. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Boost.Date\_Time](CppBoostDate_Time.htm): date and
    time \[4\]
28. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Dynamic\_bitset](CppBoostDynamic_bitset.htm): dynamic\_bitset
    \[4\]
29. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Enable\_if](CppBoostEnable_if.htm): Selective inclusion of
    function template overloads \[4\]
30. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Exception](CppBoostException.htm): The Boost Exception
    library \[4\]
31. ![OKAY?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Filesystem](CppBoostFilesystem.htm): The Boost Filesystem
    Library \[4\]
32. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Flyweight](CppBoostFlyweight.htm): Flyweight Design Pattern
    \[4\]
33. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Foreach](CppBoostForeach.htm): BOOST\_FOREACH \[4\]
34. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Format](CppBoostFormat.htm): text formatting \[4\]
35. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Function](CppBoostFunction.htm): callbacks \[4\]
36. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.FunctionTypes](CppFunctionTypes.htm): function to member
    types \[4\]
37. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional](CppFunctional.htm): function object wrappers
    \[4\]
38. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional/Factory](CppFunctionalFactory.htm): dynamic and
    static object creation \[4\]
39. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional/Forward](CppFunctionalForward.htm): allow generic
    function objects to accept arbitrary arguments \[4\]
40. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional/Hash](CppFunctionalHash.htm): A TR1 hash function
    object \[4\]
41. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Functional/Overloaded
    Function](CppFunctionalOverloadedFunction.htm): Overload different
    functions into a single function object \[4\]
42. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Fusion](CppBoostFusion.htm): Library for working with tuples,
    including various containers, algorithms, etc. \[4\]
43. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Geometry](CppBoostGeometry.htm): Geometry
    Library \[4\]
44. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.GIL](CppBoostGil.htm):
    Generic Image Library \[4\]
45. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Graph](CppBoostGraph.htm): Graph \[4\]
46. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Heap](CppBoostHeap.htm):
    Priority queue data structures \[4\]
47. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.ICL](CppBoostIcl.htm):
    Interval Container Library \[4\]
48. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Identity
    Type](CppBoostIdentityType.htm): Wrap types within round parenthesis
    so they can always be passed as macro parameters \[4\]
49. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.In Place Factory, Typed
    In Place Factory](CppBoostInPlaceFactory.htm): Generic in-place
    construction of contained objects with a variadic argument-list
    \[4\]
50. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Integer](CppBoostInteger.htm): Access standard integer types
    without placing any names in namespace std \[4\]
51. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Interprocess](CppBoostInterprocess.htm): Shared memory,
    memory mapped files, process-shared mutexes, condition variables,
    containers and allocators \[4\]
52. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Interval](CppBoostInterval.htm): Extends the usual arithmetic
    functions to mathematical intervals \[4\]
53. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Intrusive](CppBoostIntrusive.htm): Intrusive containers and
    algorithms \[4\]
54. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.IO State
    Savers](CppBoostIoStateSavers.htm): I/O library \[4\]
55. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Iostreams](CppBoostIostreams.htm): Framework for defining
    streams \[4\]
56. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Iterator](CppBoostIterator.htm): Iterator \[4\]
57. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Lambda](CppBoostLambda.htm): Lambda functions
58. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Lexical Cast](CppBoostLexicalCast.htm): text conversions
    \[4\]
59. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Local
    Function](CppBoostLocalFunction.htm): Program functions locally,
    within other functions, directly within the scope where they are
    needed \[4\]
60. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Locale](CppBoostLocale.htm): Provide localization and Unicode
    handling tools for C++ \[4\]
61. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Lockfree](CppBoostLockfree.htm): Lockfree data structures
    \[4\]
62. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Math](CppBoostMath.htm): Math \[4\]
63. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math Common
    Factor](CppBoostMathCommonFactor.htm): Greatest common divisor and
    least common multiple \[4\]
64. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Math
    Octonion](CppBoostMathOctonion.htm): Octonions \[4\]
65. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math
    Quaternion](CppBoostMathQuaternion.htm): Quaternions \[4\]
66. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math/Special
    Functions](CppBoostMathSpecialFunctions.htm): Mathematical special
    functions \[4\]
67. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math/Statistical
    Distributions](CppBoostMathStatisticalDistributions.htm):
    Statisticals
68. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Member
    Function](CppBoostMemberFunction.htm): Generalized binders for
    function/object/pointers and member functions \[4\]
69. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Meta State
    Machine](CppBoostMetaStateMachine.htm): A very high-performance
    library for expressive UML2 finite state machines \[4\]
70. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Min-Max](CppBoostMinMax.htm): Standard library extensions for
    simultaneous min/max and min/max element computations \[4\]
71. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Move](CppBoostMove.htm):
    Portable move semantics for C++03 and C++11 compilers \[4\]
72. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.MPI](CppBoostMpi.htm):
    Message Passing Interface library, for use in distributed-memory
    parallel application programming \[4\]
73. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.MPL](CppBoostMpl.htm):
    Compile-time Metaprogramming Library
74. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Multi-Array](CppBoostMultiArray.htm):
    N-dimensional array \[4\]
75. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Multi-Index](CppBoostMultiIndex.htm): container maintaining
    one or more indices with different sorting and access semantics
    \[4\]
76. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Multiprecision](CppBoostMultiprecision.htm): Extended
    precision arithmetic types for floating point, integer andrational
    arithmetic \[4\]
77. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Numeric
    Conversion](CppBoostNumericConversion.htm): Optimized Policy-based
    Numeric Conversions \[4\]
78. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Odeint](CppBoostOdeint.htm): Solving ordinary differential
    equations \[4\]
79. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Operators](CppBoostOperators.htm): Templates ease arithmetic
    classes and iterators \[4\]
80. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Optional](CppBoostOptional.htm): Discriminated-union wrapper
    for optional values \[4\]
81. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Parameter](CppBoostParameter.htm): Boost.Parameter Library -
    Write functions that accept arguments by name \[4\]
82. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Phoenix](CppBoostPhoenix.htm): Define small unnamed function
    objects at the actual call site, and more \[4\]
83. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Pointer
    Container](CppBoostPointerContainer.htm): Containers for storing
    heap-allocated polymorphic objects \[4\]
84. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Polygon](CppBoostPolygon.htm): Booleans/clipping,
    resizing/offsetting and more for planar polygons with integral
    coordinates \[4\]
85. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Pool](CppBoostPool.htm):
    Memory pool management \[4\]
86. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Preprocessor](CppBoostPreprocessor.htm): Preprocessor
    metaprogramming tools including repetition and recursion \[4\]
87. ![OKAY?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Program\_options](CppBoostProgram_options.htm): parse program
    options
88. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Property
    Map](CppBoostPropertyMap.htm): Concepts defining interfaces which
    map key objects to value objects \[4\]
89. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.PropertyTree](CppBoostProperty_tree.htm): saving data to
    [XML](CppXml.htm) file, parsing [XML](CppXml.htm) files
90. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Proto](CppBoostProto.htm): Expression template library and
    compiler construction toolkit \[4\]
91. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Python](CppBoostPython.htm): interfacing Python and C++ \[4\]
92. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Random](CppBoostRandom.htm): A complete system for random
    number generation \[4\]
93. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Range](CppBoostRange.htm): generic algorithms that builds on
    top of the new iterator concepts \[4\]
94. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Ratio](CppBoostRatio.htm): Compile time rational arithmetic
    \[4\]
95. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Rational](CppBoostRational.htm): A rational number class
    \[4\]
96. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Ref](CppBoostRef.htm): A
    utility library for passing references to generic functions \[4\]
97. ![OKAY?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Regex](CppBoostRegex.htm): Regular expression library \[4\]
98. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Result
    Of](CppBoostResultOf.htm): Determines the type of a function call
    expression \[4\]
99. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Scope
    Exit](CppBoostScopeExit.htm): Execute arbitrary code at scope exit
    \[4\]
100. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Serialization](CppBoostSerialization.htm): Serialization for
    persistence and marshalling \[4\]
101. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Signals](CppBoostSignals.htm): Managed signals &lt; slots
    callback implementation \[4\]
102. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Signals2](CppBoostSignals2.htm): Managed signals &lt; slots
    callback implementation (thread-safe version 2) \[4\]
103. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Smart\_ptr](CppBoostSmart_ptr.htm): [smart
    pointers](CppSmartPointer.htm)
104. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Spirit](CppBoostSpirit.htm): LL parser framework represents
    parsers directly as EBNF grammars in inlined C++ \[4\]
105. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Statechart](CppBoostStatechart.htm): [finite state
    machines](CppFiniteStateMachine.htm)
106. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Static
    Assert](CppBoostStaticAssert.htm): Static assertions (compile
    time assertions) \[4\]
107. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.String
    Algo](CppBoostStringAlgo.htm): String algorithms library \[4\]
108. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Swap](CppBoostSwap.htm):
    Enhanced generic swap function \[4\]
109. ![OK?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.System](CppBoostSystem.htm): Operating
    system support \[4\]
110. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Test](CppBoostTest.htm):
    Support for simple program testing, full unit testing, and for
    program execution monitoring \[4\]
111. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Thread](CppBoostThread.htm): Portable C++ multi-threading
    \[4\]
112. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Timer](CppBoostTimer.htm): Event timer, progress timer, and
    progress display classes \[4\]
113. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Tokenizer](CppBoostTokenizer.htm): Break of a string or other
    character sequence into a series of tokens \[4\]
114. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.TR1](CppBoostTr1.htm):
    TR1 library
115. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Tribool](CppBoostTribool.htm): 3-state boolean type library
    \[4\]
116. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Tuple](CppBoostBoostTuple.htm): Tuple
117. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Type
    Traits](CppBoostTypeTraits.htm): Templates for fundamental
    properties of types \[4\]
118. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Typeof](CppBoostTypeof.htm): Typeof operator emulation \[4\]
119. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.uBLAS](CppBoostUblas.htm): Matrices \[4\]
120. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Units](CppBoostUnits.htm): Zero-overhead
    dimensional analysis and unit/quantity manipulation and conversion
    \[4\]
121. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Unordered](CppBoostUnordered.htm): Unordered associative
    containers \[4\]
122. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Utility](CppBoostUtility.htm): noncopyable,
    checked\_delete(), checked\_array\_delete(), next(), prior()
    function templates, plus base-from-member idiom \[4\]
123. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Uuid](CppBoostUuid.htm):
    A universally unique identifier \[4\]
124. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Value
    Initialized](CppBoostValueInitialized.htm): Wrapper for
    uniform-syntax value initialization \[4\]
125. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Variant](CppBoostVariant.htm): Safe, generic, stack-based
    discriminated union container \[4\]
126. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Wave](CppBoostWave.htm):
    C++ implementation of the mandated C99/C++ preprocessor
    functionality \[4\]
127. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Xpressive](CppBoostXpressive.htm): Regular
    expressions allowing context-free grammars \[4\]
128. ![TODO](PicTransparent.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Box2D](CppBox2d.htm):
    [2D](Cpp2d.htm) physics engine
129. ![FAIL](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Bullet](CppBullet.htm):
    [3D](Cpp3d.htm) physics engine
130. ![?OKAY](PicYellow.png)![CLN](PicCln.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [CLN](CppCln.htm): [arbitrary
    precision](CppArbitraryPrecision.htm) numbers
131. ![?OKAY](PicYellow.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [CLX](CppClx.htm): [GUI](CppGui.htm)
132. ![N/A](PicBlack.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Eo](CppEo.htm): [genetic
    algorithms](CppGeneticAlgorithm.htm)
133. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [FANN](CppFann.htm): [neural networks](CppNeuralNet.htm)
134. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Flood](CppFlood.htm): [neural networks](CppNeuralNet.htm)
135. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [GAlib](CppGalib.htm): [genetic algorithms](CppGeneticAlgorithm.htm)
136. ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [GMP](CppGmp.htm):
    multi-precision numbers
137. ![OKAY](PicGreen.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [GMTL](CppGmtl.htm): scientific computation
138. ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [GSL](CppGsl.htm): GNU scientific
    library
139. ![OKAY](PicGreen.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [HFLOAT](CppHfloat.htm): [arbitrary
    precision](CppArbitraryPrecision.htm) numbers
140. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Irrlicht](CppIrrlicht.htm): [3D](Cpp3d.htm) engine
141. ![?OKAY](PicYellow.png)![libnds](PicLibnds.png)![NDS](PicNds.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [libnds](CppLibnds.htm): working
    with [NDS](CppNds.htm)
142. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [MathGL](CppMathGl.htm):
    visualizing data
143. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [NAG](CppNag.htm): algorithms
144. ![FAIL](PicRed.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [ODE](CppOde.htm): Open Dynamics
    Engine, [3D](Cpp3d.htm) physics engine
145. ![OKAY](PicGreen.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [OGRE](CppOgre.htm):
    [3D](Cpp3d.htm) engine
146. ![FAIL](PicRed.png)![Windows](PicWindows.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [OpenCL](CppOpenCl.htm):
    communication with CPU's, GPU's and other processors
147. ![OKAY](PicGreen.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [OpenCV](CppOpenCv.htm): computer vision
148. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [OpenGL](CppOpenGl.htm): 2D and
    [3D](Cpp3d.htm) graphics
149. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Open
    Inventor](CppOpenInventor.htm): [3D](Cpp3d.htm) graphics
150. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [OpenSceneGraph](CppOpenSceneGraph.htm): [3D](Cpp3d.htm) graphics
151. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Panda3D](CppPanda3d.htm):
    [3D](Cpp3d.htm) graphics
152. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Poppler](CppPoppler.htm):
    render PDFs
153. ![N/A](PicBlack.png)![QuantLib](PicQuantLib.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png) QuantLib:
    quantitative finance
154. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Triangle](CppTriangle.htm):
    two-dimensional mesh generator and Delaunay triangulator
155. ![OKAY](PicGreen.png)![Qt](PicQt.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [QT](CppQt.htm): [GUI](CppGui.htm)
156. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Qwt](CppQwt.htm): visualizing data in 2D
    charts/plots
157. ![N/A](PicBlack.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [QwtPlot3D](CppQwtPlot3d.htm):
    visualizing data in [3D](Cpp3d.htm) charts/plots
158. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [SDL](CppSdl.htm): multimedia
159. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [SFML](CppSfml.htm): 2D graphics
160. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Shark](CppShark.htm): machine learning
161. ![OKAY](PicGreen.png)![STL](PicStl.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [STL](CppStl.htm): general purposes
162. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [STK](CppStk.htm): audio
163. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Urho3D](CppUrho3d.htm): [3D](Cpp3d.htm) graphics
164. ![?OKAY](PicYellow.png)![VCL](PicVcl.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [VCL](CppVcl.htm):
    [GUI](CppGui.htm)
165. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Visualization
    Library](CppVisualizationLibrary.htm): [3D](Cpp3d.htm) graphics
166. ![OKAY](PicGreen.png)![Wt](PicWt.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Wt](CppWt.htm): dynamic websites

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard
    library, including TR1
2.  [Scott Meyers](CppScottMeyers.htm). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 54: Familiarize yourself with Boost
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9.1: 'Use library facilities
    rather than your own code when you can'
4.  [Boost documentation](http://www.boost.org/doc/libs/)
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 32, 1.5
    'Advice', item 12: 'Use libraries, especially the standard library,
    rather than trying to build everything from scratch'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[34\] A library shouldn't unilaterally terminate
    a program. Instead, throw an exception and let a caller decide'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[35\] A library shouldn't produce diagnostic
    output aimed at an end user. Instead, throw an exception and let a
    caller decide'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.2, page 131: 'A library doesn't
    have to be large or complicated to be useful'

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
