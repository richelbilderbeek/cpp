# ([C++](Cpp.md)) [Library](CppLibrary.md)

A [library](CppLibrary.md) is a collection of [functions](CppFunction.md) and [classes](CppClass.md).

Libraries that you should familiarize with are [1,2,10]:

 * [STL: Standard Template Library](CppStl.md): the [C++](Cpp.md) standard [library](CppLibrary.md)
 * [The Boost libraries](CppBoost.md): new functionality that is not (yet) in the [STL](CppStl.md)
 * [GSL: Guidelines Support Library](CppGsl.md): functionality to adhere to the [C++ Core Guidelines](CppCoreGuidelines.md)

## Building libraries: shared or static

There are two ways to build a library:

 * [shared library](CppSharedLibrary.md) (also called 'dynamic library')
 * [static library](CppStaticLibrary.md)

## Types of libraries: header-only or not

[libraries](CppLibrary.md) can be catagorized by their way of using them in a project:

 * [Header](CppHeaderFile.md)-only [libraries](CppLibrary.md): just [#include](CppInclude.md) the [header files](CppHeaderFile.md) to use it
 * [Implementation file (.cpp)](CppImplementationFile.md) must be added to the project, next to an [#include](CppInclude.md) of the [header files](CppHeaderFile.md) to use

The [STL](CppStl.md) is [header](CppHeaderFile.md)-only. Most [Boost](CppBoost.md) [libraries](CppLibrary.md) are [header](CppHeaderFile.md)-only.

## [Advice](CppAdvice.md)

 * A [library](CppLibrary.md) doesn't have to be large or complicated to be useful [8]
 * Familiarize yourself with the [STL](CppStl.md) and [Boost](CppBoost.md) [libraries](CppLibrary.md) [1,2]
 * Prefer using [libraries](CppLibrary.md) over hand-crafted code [3,5]
 * A [library](CppLibrary.md) shouldn't unilaterally terminate a program, but [throw](CppThrow.md) an [exception](CppException.md) instead [6]
 * A [library](CppLibrary.md) shouldn't produce diagnostic output aimed at an end user, but [throw](CppThrow.md) an [exception](CppException.md) instead [7]

## Overview of [C++](Cpp.md) [libraries](CppLibrary.md) (incomplete)

In practice, these are the [libraries](CppLibrary.md) I use or have
used, on the platforms indicated by the [pictograms](CppPictograms.md).

 * [ALGLIB](CppAlglib.md): scientific computation
 *  Annie: [neural networks](CppNeuralNet.md)
 * [apfloat](CppApfloat.md): [arbitrary precision](CppArbitraryPrecision.md) numbers
 * [BigInt](CppBigInt.md): near-infinite size integer
 * [Blitz++](CppBlitzpp.md): scientific computation
 * [Boost](CppBoost.md): many [libraries](CppLibrary.md), next [STL](CppStl.md)
 * [Boost.Accumulators](CppBoostAccumulators.md): incremental calculation, statistical accumulators [4]
 * [Boost.Algorithm](CppBoostAlgorithm.md): algorithms [4]
 * [Boost.Any](CppBoostAny.md): Safe, generic container for single values of different value types [4]
 * [Boost.Array](CppBoostArray.md): STL compliant container wrapper for arrays of constant size [4]
 * [Boost.Asio](CppBoostAsio.md): Portable networking [4]
 * [Boost.Assign](CppBoostAssign.md): Filling containers [4]
 * [Boost.Atomic](CppBoostAtomic.md): C++11-style atomic&lt;&gt; [4]
 * [Boost.Bimap](CppBoostBimap.md): Bidirectional maps [4]
 * [Boost.Bind](CppBoostBind.md): binders
 * [Boost.Call Traits](CppBoostCallTraits.md): Defines types for passing parameters [4]
 * [Boost.Chrono](CppBoostChrono.md): time utilities [4]
 * [Boost.Circular Buffer](CppBoostCircularBuffer.md): Circular/ring/cyclic buffer [4]
 * [Boost.Compatibility](CppBoostCompatibility.md): Help for non-conforming standard libraries [4]
 * [Boost.Compressed Pair](CppBoostCompressedPair.md): Empty member optimization [4]
 * [Boost.ConceptCheck](CppBoostConceptCheck.md): Tools for generic programming [4]
 * [Boost.Container](CppBoostContainer.md): Standard library containers and extensions [4]
 * [Boost.Context](CppBoostContext.md): Context switching library [4]
 * [Boost.Conversion](CppBoostConversion.md): Polymorphic and lexical casts [4]
 * [Boost.Coroutine](CppBoostCoroutine.md): Coroutine library [4]
 * [Boost.CRC](CppBoostCrc.md): Cyclic Redundancy Code [4]
 * [Boost.Date_Time](CppBoostDate_Time.md): date and time [4]
 * [Boost.Dynamic_bitset](CppBoostDynamic_bitset.md): dynamic_bitset [4]
 * [Boost.Enable_if](CppBoostEnable_if.md): Selective inclusion of function template overloads [4]
 * [Boost.Exception](CppBoostException.md): The Boost Exception library [4]
 * [Boost.Filesystem](CppBoostFilesystem.md): The Boost Filesystem Library [4]
 * [Boost.Flyweight](CppBoostFlyweight.md): Flyweight Design Pattern [4]
 * [Boost.Foreach](CppBoostForeach.md): BOOST_FOREACH [4]
 * [Boost.Format](CppBoostFormat.md): text formatting [4]
 * [Boost.Function](CppBoostFunction.md): callbacks [4]
 * [Boost.FunctionTypes](CppFunctionTypes.md): function to member types [4]
 * [Boost.Functional](CppFunctional.md): function object wrappers [4]
 * [Boost.Functional/Factory](CppFunctionalFactory.md): dynamic and static object creation [4]
 * [Boost.Functional/Forward](CppFunctionalForward.md): allow generic function objects to accept arbitrary arguments [4]
 * [Boost.Functional/Hash](CppFunctionalHash.md): A TR1 hash function object [4]
 * [Boost.Functional/Overloaded Function](CppFunctionalOverloadedFunction.md): Overload different functions into a single function object [4]
 * [Boost.Fusion](CppBoostFusion.md): Library for working with tuples, including various containers, algorithms, etc. [4]
 * [Boost.Geometry](CppBoostGeometry.md): Geometry Library [4]
 * [Boost.GIL](CppBoostGil.md): Generic Image Library [4]
 * [Boost.Graph](CppBoostGraph.md): Graph [4]
 * [Boost.Heap](CppBoostHeap.md): Priority queue data structures [4]
 * [Boost.ICL](CppBoostIcl.md): Interval Container Library [4]
 * [Boost.Identity Type](CppBoostIdentityType.md): Wrap types within round parenthesis so they can always be passed as macro parameters [4]
 * [Boost.In Place Factory, Typed In Place Factory](CppBoostInPlaceFactory.md): Generic in-place construction of contained objects with a variadic argument-list [4]
 * [Boost.Integer](CppBoostInteger.md): Access standard integer types without placing any names in namespace std [4]
 * [Boost.Interprocess](CppBoostInterprocess.md): Shared memory, memory mapped files, process-shared mutexes, condition variables, containers and allocators [4]
 * [Boost.Interval](CppBoostInterval.md): Extends the usual arithmetic functions to mathematical intervals [4]
 * [Boost.Intrusive](CppBoostIntrusive.md): Intrusive containers and algorithms [4]
 * [Boost.IO State Savers](CppBoostIoStateSavers.md): I/O library [4]
 * [Boost.Iostreams](CppBoostIostreams.md): Framework for defining streams [4]
 * [Boost.Iterator](CppBoostIterator.md): Iterator [4]
 * [Boost.Lambda](CppBoostLambda.md): Lambda functions
 * [Boost.Lexical Cast](CppBoostLexicalCast.md): text conversions [4]
 * [Boost.Local Function](CppBoostLocalFunction.md): Program functions locally, within other functions, directly within the scope where they are needed [4]
 * [Boost.Locale](CppBoostLocale.md): Provide localization and Unicode handling tools for C++ [4]
 * [Boost.Lockfree](CppBoostLockfree.md): Lockfree data structures [4]
 * [Boost.Math](CppBoostMath.md): Math [4]
 * [Boost.Math Common Factor](CppBoostMathCommonFactor.md): Greatest common divisor and least common multiple [4]
 * [Math Octonion](CppBoostMathOctonion.md): Octonions [4]
 * [Boost.Math Quaternion](CppBoostMathQuaternion.md): Quaternions [4]
 * [Boost.Math/Special Functions](CppBoostMathSpecialFunctions.md): Mathematical special functions [4]
 * [Boost.Math/Statistical Distributions](CppBoostMathStatisticalDistributions.md): Statisticals
 * [Boost.Member Function](CppBoostMemberFunction.md): Generalized binders for function/object/pointers and member functions [4]
 * [Boost.Meta State Machine](CppBoostMetaStateMachine.md): A very high-performance library for expressive UML2 finite state machines [4]
 * [Boost.Min-Max](CppBoostMinMax.md): Standard library extensions for simultaneous min/max and min/max element computations [4]
 * [Boost.Move](CppBoostMove.md): Portable move semantics for C++03 and C++11 compilers [4]
 * [Boost.MPI](CppBoostMpi.md): Message Passing Interface library, for use in distributed-memory parallel application programming [4]
 * [Boost.MPL](CppBoostMpl.md): Compile-time Metaprogramming Library
 * [Boost.Multi-Array](CppBoostMultiArray.md): N-dimensional array [4]
 * [Boost.Multi-Index](CppBoostMultiIndex.md): container maintaining one or more indices with different sorting and access semantics [4]
 * [Boost.Multiprecision](CppBoostMultiprecision.md): Extended precision arithmetic types for floating point, integer andrational arithmetic [4]
 * [Boost.Numeric Conversion](CppBoostNumericConversion.md): Optimized Policy-based Numeric Conversions [4]
 * [Boost.Odeint](CppBoostOdeint.md): Solving ordinary differential equations [4]
 * [Boost.Operators](CppBoostOperators.md): Templates ease arithmetic classes and iterators [4]
 * [Boost.Optional](CppBoostOptional.md): Discriminated-union wrapper for optional values [4]
 * [Boost.Parameter](CppBoostParameter.md): Boost.Parameter Library - Write functions that accept arguments by name [4]
 * [Boost.Phoenix](CppBoostPhoenix.md): Define small unnamed function objects at the actual call site, and more [4]
 * [Boost.Pointer Container](CppBoostPointerContainer.md): Containers for storing heap-allocated polymorphic objects [4]
 * [Boost.Polygon](CppBoostPolygon.md): Booleans/clipping, resizing/offsetting and more for planar polygons with integral coordinates [4]
 * [Boost.Pool](CppBoostPool.md): Memory pool management [4]
 * [Boost.Preprocessor](CppBoostPreprocessor.md): Preprocessor metaprogramming tools including repetition and recursion [4]
 * [Boost.Program_options](CppBoostProgram_options.md): parse program options
 * [Boost.Property Map](CppBoostPropertyMap.md): Concepts defining interfaces which map key objects to value objects [4]
 * [Boost.PropertyTree](CppBoostProperty_tree.md): saving data to [XML](CppXml.md) file, parsing [XML](CppXml.md) files
 * [Boost.Proto](CppBoostProto.md): Expression template library and compiler construction toolkit [4]
 * [Boost.Python](CppBoostPython.md): interfacing Python and C++ [4]
 * [Boost.Random](CppBoostRandom.md): A complete system for random number generation [4]
 * [Boost.Range](CppBoostRange.md): generic algorithms that builds on top of the new iterator concepts [4]
 * [Boost.Ratio](CppBoostRatio.md): Compile time rational arithmetic [4]
 * [Boost.Rational](CppBoostRational.md): A rational number class [4]
 * [Boost.Ref](CppBoostRef.md): A utility library for passing references to generic functions [4]
 * [Boost.Regex](CppBoostRegex.md): Regular expression library [4]
 * [Boost.Result Of](CppBoostResultOf.md): Determines the type of a function call expression [4]
 * [Boost.Scope Exit](CppBoostScopeExit.md): Execute arbitrary code at scope exit [4]
 * [Boost.Serialization](CppBoostSerialization.md): Serialization for persistence and marshalling [4]
 * [Boost.Signals](CppBoostSignals.md): Managed signals &lt; slots callback implementation [4]
 * [Boost.Signals2](CppBoostSignals2.md): Managed signals &lt; slots callback implementation (thread-safe version 2) [4]
 * [Boost.Smart_ptr](CppBoostSmart_ptr.md): [smart pointers](CppSmartPointer.md)
 * [Boost.Spirit](CppBoostSpirit.md): LL parser framework represents parsers directly as EBNF grammars in inlined C++ [4]
 * [Boost.Statechart](CppBoostStatechart.md): [finite state machines](CppFiniteStateMachine.md)
 * [Boost.Static Assert](CppBoostStaticAssert.md): Static assertions (compile time assertions) [4]
 * [Boost.String Algo](CppBoostStringAlgo.md): String algorithms library [4]
 * [Boost.Swap](CppBoostSwap.md): Enhanced generic swap function [4]
 * [Boost.System](CppBoostSystem.md): Operating system support [4]
 * [Boost.Test](CppBoostTest.md): Support for simple program testing, full unit testing, and for program execution monitoring [4]
 * [Boost.Thread](CppBoostThread.md): Portable C++ multi-threading [4]
 * [Boost.Timer](CppBoostTimer.md): Event timer, progress timer, and progress display classes [4]
 * [Boost.Tokenizer](CppBoostTokenizer.md): Break of a string or other character sequence into a series of tokens [4]
 * [Boost.TR1](CppBoostTr1.md): TR1 library
 * [Boost.Tribool](CppBoostTribool.md): 3-state boolean type library [4]
 * [Boost.Tuple](CppBoostBoostTuple.md): Tuple
 * [Boost.Type Traits](CppBoostTypeTraits.md): Templates for fundamental properties of types [4]
 * [Boost.Typeof](CppBoostTypeof.md): Typeof operator emulation [4]
 * [Boost.uBLAS](CppBoostUblas.md): Matrices [4]
 * [Boost.Units](CppBoostUnits.md): Zero-overhead dimensional analysis and unit/quantity manipulation and conversion [4]
 * [Boost.Unordered](CppBoostUnordered.md): Unordered associative containers [4]
 * [Boost.Utility](CppBoostUtility.md): noncopyable, checked_delete(), checked_array_delete(), next(), prior() function templates, plus base-from-member idiom [4]
 * [Boost.Uuid](CppBoostUuid.md): A universally unique identifier [4]
 * [Boost.Value Initialized](CppBoostValueInitialized.md): Wrapper for uniform-syntax value initialization [4]
 * [Boost.Variant](CppBoostVariant.md): Safe, generic, stack-based discriminated union container [4]
 * [Boost.Wave](CppBoostWave.md): C++ implementation of the mandated C99/C++ preprocessor functionality [4]
 * [Boost.Xpressive](CppBoostXpressive.md): Regular expressions allowing context-free grammars [4]
 * [Box2D](CppBox2d.md): [2D](Cpp2d.md) physics engine
 * [Bullet](CppBullet.md): [3D](Cpp3d.md) physics engine
 * [CLN](CppCln.md): [arbitrary precision](CppArbitraryPrecision.md) numbers
 * [CLX](CppClx.md): [GUI](CppGui.md)
 * [Eo](CppEo.md): [genetic algorithms](CppGeneticAlgorithm.md)
 * [FANN](CppFann.md): [neural networks](CppNeuralNet.md)
 * [Flood](CppFlood.md): [neural networks](CppNeuralNet.md)
 * [GAlib](CppGalib.md): [genetic algorithms](CppGeneticAlgorithm.md)
 * [GMP](CppGmp.md): multi-precision numbers
 * [GMTL](CppGmtl.md): scientific computation
 * [GSL](CppGsl.md): GNU scientific library
 * [HFLOAT](CppHfloat.md): [arbitrary precision](CppArbitraryPrecision.md) numbers
 * [Irrlicht](CppIrrlicht.md): [3D](Cpp3d.md) engine
 * [libnds](CppLibnds.md): working with [NDS](CppNds.md)
 * [MathGL](CppMathGl.md): visualizing data
 * [NAG](CppNag.md): algorithms
 * [ODE](CppOde.md): Open Dynamics Engine, [3D](Cpp3d.md) physics engine
 * [OGRE](CppOgre.md): [3D](Cpp3d.md) engine
 * [OpenCL](CppOpenCl.md): communication with CPU's, GPU's and other processors
 * [OpenCV](CppOpenCv.md): computer vision
 * [OpenGL](CppOpenGl.md): 2D and [3D](Cpp3d.md) graphics
 * [Open Inventor](CppOpenInventor.md): [3D](Cpp3d.md) graphics
 * [OpenSceneGraph](CppOpenSceneGraph.md): [3D](Cpp3d.md) graphics
 * [Panda3D](CppPanda3d.md): [3D](Cpp3d.md) graphics
 * [Poppler](CppPoppler.md): render PDFs
 *  QuantLib: quantitative finance
 * [Triangle](CppTriangle.md): two-dimensional mesh generator and Delaunay triangulator
 * [QT](CppQt.md): [GUI](CppGui.md)
 * [Qwt](CppQwt.md): visualizing data in 2D charts/plots
 * [QwtPlot3D](CppQwtPlot3d.md): visualizing data in [3D](Cpp3d.md) charts/plots
 * [SDL](CppSdl.md): multimedia
 * [SFML](CppSfml.md): 2D graphics
 * [Shark](CppShark.md): machine learning
 * [STL](CppStl.md): general purposes
 * [STK](CppStk.md): audio
 * [Urho3D](CppUrho3d.md): [3D](Cpp3d.md) graphics
 * [VCL](CppVcl.md): [GUI](CppGui.md)
 * [Visualization Library](CppVisualizationLibrary.md): [3D](Cpp3d.md) graphics
 * [Wt](CppWt.md): dynamic websites

# [References](CppReferences.md)

 * [1] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. Item 53: Familiarize yourself with the standard library, including TR1
 * [2] [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition). ISBN: 0-321-33487-6. Item 54: Familiarize yourself with Boost
 * [3] [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009. ISBN: 978-0-321-54372-1. Chapter 5.9.1: 'Use library facilities rather than your own code when you can'
 * [4] [Boost documentation](http://www.boost.org/doc/libs/)
 * [5] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Page 32, 1.5 'Advice', item 12: 'Use libraries, especially the standard library, rather than trying to build everything from scratch'
 * [6] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice. page 387: '[34] A library shouldn't unilaterally terminate a program. Instead, throw an exception and let a caller decide'
 * [7] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7. Advice. page 387: '[35] A library shouldn't produce diagnostic output aimed at an end user. Instead, throw an exception and let a caller decide'
 * [8] [Bjarne Stroustrup](CppBjarneStroustrup.md). A tour of C++. 2014. ISBN: 978-0-321-958310. Chapter 11.7.2, page 131: 'A library doesn't have to be large or complicated to be useful'
 * [9] [C++ Core Guidelines: SL.2: Prefer the standard library to other libraries](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#Rsl-sl)
 * [10] [C++ Core Guidelines: P.13: Use support libraries as appropriate](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p13-use-support-libraries-as-appropriate)


