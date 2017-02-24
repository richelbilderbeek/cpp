
 

 

 

 

 

([C++](Cpp.md)) [Library](CppLibrary.md)
==========================================

 

A [library](CppLibrary.md) is a collection of
[functions](CppFunction.md) and [classes](CppClass.md).

 

There are multiple types of [libraries](CppLibrary.md) that can be
built:

-   [shared library](CppSharedLibrary.md) (also called
    'dynamic library')
-   [static library](CppStaticLibrary.md)

 

The [C++](Cpp.md) standard [library](CppLibrary.md) is called the
[Standard Template Library](CppStl.md). The playground of the next
version of the [STL](CppStl.md) is [the Boost library
collection.](CppBoost.md).

 

[libraries](CppLibrary.md) can be catagorized by their way of using
them in a project:

-   [Header](CppHeaderFile.md)-only [libraries](CppLibrary.md): just
    [\#include](CppInclude.md) the [header files](CppHeaderFile.md) to
    use it
-   [Implementation file (.cpp)](CppImplementationFile.md) must be
    added to the project, next to an [\#include](CppInclude.md) of the
    [header files](CppHeaderFile.md) to use

 

The [STL](CppStl.md) is [header](CppHeaderFile.md)-only. Most
[Boost](CppBoost.md) [libraries](CppLibrary.md) are
[header](CppHeaderFile.md)-only.

 

An easy-to-install library from an online repository is called a
[package](CppPackage.md).

 

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   A [Library](CppLibrary.md) doesn't have to be large or complicated
    to be useful \[8\]
-   Familiarize yourself with the [STL](CppStl.md) and
    [Boost](CppBoost.md) [libraries](CppLibrary.md) \[1,2\]
-   Prefer using [libraries](CppLibrary.md) over hand-crafted code
    \[3,5\]
-   A [library](CppLibrary.md) shouldn't unilaterally terminate a
    program, but [throw](CppThrow.md) an [exception](CppException.md)
    instead \[6\]
-   A [library](CppLibrary.md) shouldn't produce diagnostic output
    aimed at an end user, but [throw](CppThrow.md) an
    [exception](CppException.md) instead \[7\]

 

 

 

 

 

Overview of [C++](Cpp.md) [libraries](CppLibrary.md) (incomplete)
-------------------------------------------------------------------

 

In practice, these are the [libraries](CppLibrary.md) I use or have
used, on the platforms indicated by the [pictograms](CppPictograms.md).

 

 

1.  ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [ALGLIB](CppAlglib.md):
    scientific computation
2.  ![N/A](PicBlack.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) Annie: [neural
    networks](CppNeuralNet.md)
3.  ![OKAY](PicGreen.png)![Windows](PicWindows.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [apfloat](CppApfloat.md):
    [arbitrary precision](CppArbitraryPrecision.md) numbers
4.  ![OKAY](PicGreen.png)![BigInt](PicBigInt.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [BigInt](CppBigInt.md): near-infinite size integer
5.  ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [Blitz++](CppBlitzpp.md):
    scientific computation
6.  ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost](CppBoost.md): many [libraries](CppLibrary.md), next
    [STL](CppStl.md)
7.  ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Accumulators](CppBoostAccumulators.md): incremental
    calculation, statistical accumulators \[4\]
8.  ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Algorithm](CppBoostAlgorithm.md):
    algorithms \[4\]
9.  ![OK](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Any](CppBoostAny.md):
    Safe, generic container for single values of different value types
    \[4\]
10. ![OK](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Array](CppBoostArray.md): STL compliant container wrapper
    for arrays of constant size \[4\]
11. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Boost.Asio](CppBoostAsio.md): Portable networking
    \[4\]
12. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Assign](CppBoostAssign.md): Filling containers \[4\]
13. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Atomic](CppBoostAtomic.md): C++11-style atomic&lt;&gt; \[4\]
14. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Bimap](CppBoostBimap.md): Bidirectional
    maps \[4\]
15. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Bind](CppBoostBind.md): binders
16. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Call
    Traits](CppBoostCallTraits.md): Defines types for passing
    parameters \[4\]
17. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Chrono](CppBoostChrono.md): time utilities \[4\]
18. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Circular
    Buffer](CppBoostCircularBuffer.md): Circular/ring/cyclic buffer
    \[4\]
19. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Compatibility](CppBoostCompatibility.md): Help for
    non-conforming standard libraries \[4\]
20. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Compressed
    Pair](CppBoostCompressedPair.md): Empty member optimization \[4\]
21. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.ConceptCheck](CppBoostConceptCheck.md): Tools for generic
    programming \[4\]
22. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Container](CppBoostContainer.md): Standard library
    containers and extensions \[4\]
23. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Context](CppBoostContext.md): Context switching library
    \[4\]
24. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Boost.Conversion](CppBoostConversion.md):
    Polymorphic and lexical casts \[4\]
25. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Coroutine](CppBoostCoroutine.md): Coroutine library \[4\]
26. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.CRC](CppBoostCrc.md):
    Cyclic Redundancy Code \[4\]
27. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Boost.Date\_Time](CppBoostDate_Time.md): date and
    time \[4\]
28. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Dynamic\_bitset](CppBoostDynamic_bitset.md): dynamic\_bitset
    \[4\]
29. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Enable\_if](CppBoostEnable_if.md): Selective inclusion of
    function template overloads \[4\]
30. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Exception](CppBoostException.md): The Boost Exception
    library \[4\]
31. ![OKAY?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Filesystem](CppBoostFilesystem.md): The Boost Filesystem
    Library \[4\]
32. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Flyweight](CppBoostFlyweight.md): Flyweight Design Pattern
    \[4\]
33. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Foreach](CppBoostForeach.md): BOOST\_FOREACH \[4\]
34. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Format](CppBoostFormat.md): text formatting \[4\]
35. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Function](CppBoostFunction.md): callbacks \[4\]
36. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.FunctionTypes](CppFunctionTypes.md): function to member
    types \[4\]
37. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional](CppFunctional.md): function object wrappers
    \[4\]
38. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional/Factory](CppFunctionalFactory.md): dynamic and
    static object creation \[4\]
39. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional/Forward](CppFunctionalForward.md): allow generic
    function objects to accept arbitrary arguments \[4\]
40. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Functional/Hash](CppFunctionalHash.md): A TR1 hash function
    object \[4\]
41. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Functional/Overloaded
    Function](CppFunctionalOverloadedFunction.md): Overload different
    functions into a single function object \[4\]
42. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Fusion](CppBoostFusion.md): Library for working with tuples,
    including various containers, algorithms, etc. \[4\]
43. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Geometry](CppBoostGeometry.md): Geometry
    Library \[4\]
44. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.GIL](CppBoostGil.md):
    Generic Image Library \[4\]
45. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Graph](CppBoostGraph.md): Graph \[4\]
46. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Heap](CppBoostHeap.md):
    Priority queue data structures \[4\]
47. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.ICL](CppBoostIcl.md):
    Interval Container Library \[4\]
48. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Identity
    Type](CppBoostIdentityType.md): Wrap types within round parenthesis
    so they can always be passed as macro parameters \[4\]
49. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.In Place Factory, Typed
    In Place Factory](CppBoostInPlaceFactory.md): Generic in-place
    construction of contained objects with a variadic argument-list
    \[4\]
50. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Integer](CppBoostInteger.md): Access standard integer types
    without placing any names in namespace std \[4\]
51. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Interprocess](CppBoostInterprocess.md): Shared memory,
    memory mapped files, process-shared mutexes, condition variables,
    containers and allocators \[4\]
52. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Interval](CppBoostInterval.md): Extends the usual arithmetic
    functions to mathematical intervals \[4\]
53. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Intrusive](CppBoostIntrusive.md): Intrusive containers and
    algorithms \[4\]
54. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.IO State
    Savers](CppBoostIoStateSavers.md): I/O library \[4\]
55. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Iostreams](CppBoostIostreams.md): Framework for defining
    streams \[4\]
56. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Iterator](CppBoostIterator.md): Iterator \[4\]
57. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Lambda](CppBoostLambda.md): Lambda functions
58. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Lexical Cast](CppBoostLexicalCast.md): text conversions
    \[4\]
59. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Local
    Function](CppBoostLocalFunction.md): Program functions locally,
    within other functions, directly within the scope where they are
    needed \[4\]
60. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Locale](CppBoostLocale.md): Provide localization and Unicode
    handling tools for C++ \[4\]
61. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Lockfree](CppBoostLockfree.md): Lockfree data structures
    \[4\]
62. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Math](CppBoostMath.md): Math \[4\]
63. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math Common
    Factor](CppBoostMathCommonFactor.md): Greatest common divisor and
    least common multiple \[4\]
64. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Math
    Octonion](CppBoostMathOctonion.md): Octonions \[4\]
65. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math
    Quaternion](CppBoostMathQuaternion.md): Quaternions \[4\]
66. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math/Special
    Functions](CppBoostMathSpecialFunctions.md): Mathematical special
    functions \[4\]
67. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Math/Statistical
    Distributions](CppBoostMathStatisticalDistributions.md):
    Statisticals
68. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Member
    Function](CppBoostMemberFunction.md): Generalized binders for
    function/object/pointers and member functions \[4\]
69. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Meta State
    Machine](CppBoostMetaStateMachine.md): A very high-performance
    library for expressive UML2 finite state machines \[4\]
70. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Min-Max](CppBoostMinMax.md): Standard library extensions for
    simultaneous min/max and min/max element computations \[4\]
71. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Move](CppBoostMove.md):
    Portable move semantics for C++03 and C++11 compilers \[4\]
72. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.MPI](CppBoostMpi.md):
    Message Passing Interface library, for use in distributed-memory
    parallel application programming \[4\]
73. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.MPL](CppBoostMpl.md):
    Compile-time Metaprogramming Library
74. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Multi-Array](CppBoostMultiArray.md):
    N-dimensional array \[4\]
75. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Multi-Index](CppBoostMultiIndex.md): container maintaining
    one or more indices with different sorting and access semantics
    \[4\]
76. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Multiprecision](CppBoostMultiprecision.md): Extended
    precision arithmetic types for floating point, integer andrational
    arithmetic \[4\]
77. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Numeric
    Conversion](CppBoostNumericConversion.md): Optimized Policy-based
    Numeric Conversions \[4\]
78. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Odeint](CppBoostOdeint.md): Solving ordinary differential
    equations \[4\]
79. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Operators](CppBoostOperators.md): Templates ease arithmetic
    classes and iterators \[4\]
80. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Optional](CppBoostOptional.md): Discriminated-union wrapper
    for optional values \[4\]
81. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Parameter](CppBoostParameter.md): Boost.Parameter Library -
    Write functions that accept arguments by name \[4\]
82. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Phoenix](CppBoostPhoenix.md): Define small unnamed function
    objects at the actual call site, and more \[4\]
83. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Pointer
    Container](CppBoostPointerContainer.md): Containers for storing
    heap-allocated polymorphic objects \[4\]
84. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Polygon](CppBoostPolygon.md): Booleans/clipping,
    resizing/offsetting and more for planar polygons with integral
    coordinates \[4\]
85. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Pool](CppBoostPool.md):
    Memory pool management \[4\]
86. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Preprocessor](CppBoostPreprocessor.md): Preprocessor
    metaprogramming tools including repetition and recursion \[4\]
87. ![OKAY?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Program\_options](CppBoostProgram_options.md): parse program
    options
88. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Property
    Map](CppBoostPropertyMap.md): Concepts defining interfaces which
    map key objects to value objects \[4\]
89. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.PropertyTree](CppBoostProperty_tree.md): saving data to
    [XML](CppXml.md) file, parsing [XML](CppXml.md) files
90. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Proto](CppBoostProto.md): Expression template library and
    compiler construction toolkit \[4\]
91. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Python](CppBoostPython.md): interfacing Python and C++ \[4\]
92. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Random](CppBoostRandom.md): A complete system for random
    number generation \[4\]
93. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Range](CppBoostRange.md): generic algorithms that builds on
    top of the new iterator concepts \[4\]
94. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Ratio](CppBoostRatio.md): Compile time rational arithmetic
    \[4\]
95. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Rational](CppBoostRational.md): A rational number class
    \[4\]
96. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Ref](CppBoostRef.md): A
    utility library for passing references to generic functions \[4\]
97. ![OKAY?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Regex](CppBoostRegex.md): Regular expression library \[4\]
98. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Result
    Of](CppBoostResultOf.md): Determines the type of a function call
    expression \[4\]
99. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Scope
    Exit](CppBoostScopeExit.md): Execute arbitrary code at scope exit
    \[4\]
100. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Serialization](CppBoostSerialization.md): Serialization for
    persistence and marshalling \[4\]
101. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Signals](CppBoostSignals.md): Managed signals &lt; slots
    callback implementation \[4\]
102. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Signals2](CppBoostSignals2.md): Managed signals &lt; slots
    callback implementation (thread-safe version 2) \[4\]
103. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [Boost.Smart\_ptr](CppBoostSmart_ptr.md): [smart
    pointers](CppSmartPointer.md)
104. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Spirit](CppBoostSpirit.md): LL parser framework represents
    parsers directly as EBNF grammars in inlined C++ \[4\]
105. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Statechart](CppBoostStatechart.md): [finite state
    machines](CppFiniteStateMachine.md)
106. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Static
    Assert](CppBoostStaticAssert.md): Static assertions (compile
    time assertions) \[4\]
107. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.String
    Algo](CppBoostStringAlgo.md): String algorithms library \[4\]
108. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Swap](CppBoostSwap.md):
    Enhanced generic swap function \[4\]
109. ![OK?](PicYellow.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.System](CppBoostSystem.md): Operating
    system support \[4\]
110. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Test](CppBoostTest.md):
    Support for simple program testing, full unit testing, and for
    program execution monitoring \[4\]
111. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Thread](CppBoostThread.md): Portable C++ multi-threading
    \[4\]
112. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Timer](CppBoostTimer.md): Event timer, progress timer, and
    progress display classes \[4\]
113. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Tokenizer](CppBoostTokenizer.md): Break of a string or other
    character sequence into a series of tokens \[4\]
114. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.TR1](CppBoostTr1.md):
    TR1 library
115. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Tribool](CppBoostTribool.md): 3-state boolean type library
    \[4\]
116. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Tuple](CppBoostBoostTuple.md): Tuple
117. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Type
    Traits](CppBoostTypeTraits.md): Templates for fundamental
    properties of types \[4\]
118. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Typeof](CppBoostTypeof.md): Typeof operator emulation \[4\]
119. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.uBLAS](CppBoostUblas.md): Matrices \[4\]
120. ![OKAY](PicGreen.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Units](CppBoostUnits.md): Zero-overhead
    dimensional analysis and unit/quantity manipulation and conversion
    \[4\]
121. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Unordered](CppBoostUnordered.md): Unordered associative
    containers \[4\]
122. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Utility](CppBoostUtility.md): noncopyable,
    checked\_delete(), checked\_array\_delete(), next(), prior()
    function templates, plus base-from-member idiom \[4\]
123. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Uuid](CppBoostUuid.md):
    A universally unique identifier \[4\]
124. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Value
    Initialized](CppBoostValueInitialized.md): Wrapper for
    uniform-syntax value initialization \[4\]
125. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [Boost.Variant](CppBoostVariant.md): Safe, generic, stack-based
    discriminated union container \[4\]
126. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Boost.Wave](CppBoostWave.md):
    C++ implementation of the mandated C99/C++ preprocessor
    functionality \[4\]
127. ![TODO](PicTransparent.png)![Boost](PicBoost.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Boost.Xpressive](CppBoostXpressive.md): Regular
    expressions allowing context-free grammars \[4\]
128. ![TODO](PicTransparent.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Box2D](CppBox2d.md):
    [2D](Cpp2d.md) physics engine
129. ![FAIL](PicRed.png)![Qt
    Creator](PicQtCreator.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Bullet](CppBullet.md):
    [3D](Cpp3d.md) physics engine
130. ![?OKAY](PicYellow.png)![CLN](PicCln.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [CLN](CppCln.md): [arbitrary
    precision](CppArbitraryPrecision.md) numbers
131. ![?OKAY](PicYellow.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [CLX](CppClx.md): [GUI](CppGui.md)
132. ![N/A](PicBlack.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Eo](CppEo.md): [genetic
    algorithms](CppGeneticAlgorithm.md)
133. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [FANN](CppFann.md): [neural networks](CppNeuralNet.md)
134. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Flood](CppFlood.md): [neural networks](CppNeuralNet.md)
135. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [GAlib](CppGalib.md): [genetic algorithms](CppGeneticAlgorithm.md)
136. ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [GMP](CppGmp.md):
    multi-precision numbers
137. ![OKAY](PicGreen.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [GMTL](CppGmtl.md): scientific computation
138. ![FAIL](PicRed.png)![Windows](PicWindows.png)![TODO](PicTransparent.png)![
    ](PicLinux.png)![ ](PicSpacer.png) [GSL](CppGsl.md): GNU scientific
    library
139. ![OKAY](PicGreen.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [HFLOAT](CppHfloat.md): [arbitrary
    precision](CppArbitraryPrecision.md) numbers
140. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Irrlicht](CppIrrlicht.md): [3D](Cpp3d.md) engine
141. ![?OKAY](PicYellow.png)![libnds](PicLibnds.png)![NDS](PicNds.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [libnds](CppLibnds.md): working
    with [NDS](CppNds.md)
142. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [MathGL](CppMathGl.md):
    visualizing data
143. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [NAG](CppNag.md): algorithms
144. ![FAIL](PicRed.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [ODE](CppOde.md): Open Dynamics
    Engine, [3D](Cpp3d.md) physics engine
145. ![OKAY](PicGreen.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [OGRE](CppOgre.md):
    [3D](Cpp3d.md) engine
146. ![FAIL](PicRed.png)![Windows](PicWindows.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [OpenCL](CppOpenCl.md):
    communication with CPU's, GPU's and other processors
147. ![OKAY](PicGreen.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [OpenCV](CppOpenCv.md): computer vision
148. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [OpenGL](CppOpenGl.md): 2D and
    [3D](Cpp3d.md) graphics
149. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Open
    Inventor](CppOpenInventor.md): [3D](Cpp3d.md) graphics
150. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)
    [OpenSceneGraph](CppOpenSceneGraph.md): [3D](Cpp3d.md) graphics
151. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Panda3D](CppPanda3d.md):
    [3D](Cpp3d.md) graphics
152. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Poppler](CppPoppler.md):
    render PDFs
153. ![N/A](PicBlack.png)![QuantLib](PicQuantLib.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png) QuantLib:
    quantitative finance
154. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Triangle](CppTriangle.md):
    two-dimensional mesh generator and Delaunay triangulator
155. ![OKAY](PicGreen.png)![Qt](PicQt.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [QT](CppQt.md): [GUI](CppGui.md)
156. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)![
    ](PicSpacer.png) [Qwt](CppQwt.md): visualizing data in 2D
    charts/plots
157. ![N/A](PicBlack.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [QwtPlot3D](CppQwtPlot3d.md):
    visualizing data in [3D](Cpp3d.md) charts/plots
158. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [SDL](CppSdl.md): multimedia
159. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [SFML](CppSfml.md): 2D graphics
160. ![?OKAY](PicYellow.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Shark](CppShark.md): machine learning
161. ![OKAY](PicGreen.png)![STL](PicStl.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![Windows](PicWindows.png)
    [STL](CppStl.md): general purposes
162. ![OKAY](PicGreen.png)![Ubuntu](PicUbuntu.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [STK](CppStk.md): audio
163. ![OKAY](PicGreen.png)![Lubuntu](PicLubuntu.png)![
    ](PicSpacer.png)![ ](PicSpacer.png)![ ](PicSpacer.png)
    [Urho3D](CppUrho3d.md): [3D](Cpp3d.md) graphics
164. ![?OKAY](PicYellow.png)![VCL](PicVcl.png)![Windows](PicWindows.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [VCL](CppVcl.md):
    [GUI](CppGui.md)
165. ![TODO](PicTransparent.png)![ ](PicSpacer.png)![ ](PicSpacer.png)![
    ](PicSpacer.png)![ ](PicSpacer.png) [Visualization
    Library](CppVisualizationLibrary.md): [3D](Cpp3d.md) graphics
166. ![OKAY](PicGreen.png)![Wt](PicWt.png)![Lubuntu](PicLubuntu.png)![Ubuntu](PicUbuntu.png)![
    ](PicSpacer.png) [Wt](CppWt.md): dynamic websites

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard
    library, including TR1
2.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 54: Familiarize yourself with Boost
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9.1: 'Use library facilities
    rather than your own code when you can'
4.  [Boost documentation](http://www.boost.org/doc/libs/)
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 32, 1.5
    'Advice', item 12: 'Use libraries, especially the standard library,
    rather than trying to build everything from scratch'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[34\] A library shouldn't unilaterally terminate
    a program. Instead, throw an exception and let a caller decide'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[35\] A library shouldn't produce diagnostic
    output aimed at an end user. Instead, throw an exception and let a
    caller decide'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014.
    ISBN: 978-0-321-958310. Chapter 11.7.2, page 131: 'A library doesn't
    have to be large or complicated to be useful'

 

 

 

 

 

 

