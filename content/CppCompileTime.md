# [compile time](CppCompileTime.md)

[compile time](CppCompileTime.md) is the term used for:

 * the time it takes to [compile](CppCompiler.md). Techniques to
   shorten this are:
     * use of [forward declarations](CppForwardDeclaration.md)
     * use of [pimpl idiom](CppPimpl.md)
     * use of precompiled [header files](CppHeaderFile.md)
 * properties known when [compiling](CppCompiler.md). For example, the
   [factorial](CppFactorial.md) of any ([compile time](CppCompileTime.md)) 
   [constant](CppConst.md) is known.
   [Template metaprogramming](CppTemplateMetaprogramming.md) shifts
   the runtime calculations to [compile time](CppCompileTime.md)

What can be checked at [compile time](CppCompileTime.md) is usually
best checked at [compile time](CppCompileTime.md), for example by using
[static_assert](CppStatic_assert.md).

[compile time](CppCompileTime.md) is followed by [link
time](CppLinkTime.md).


## [Reference](CppReferences.md)

  * 1. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[21\] What can be checked at compile time is
    usually best checked at compile time (using static_assert)'
