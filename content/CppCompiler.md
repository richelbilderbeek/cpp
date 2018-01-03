# ([C++](Cpp.md)) [Compiler](CppCompiler.md)

A [compiler](CppCompiler.md) is a program that translates your
[C++](Cpp.md) code to object code, after which it is [linked](CppLink.md) (by the [linker](CppLinker.md)) to an executable.

A [compiler](CppCompiler.md) might emit [compile warnings](CppCompileWarning.md) and [compile errors](CppCompileError.md).
 
## ![Qt Creator](PicQtCreator.png) [How to use Qt Creator to compile C code?](CppCompilerC.md)

In the [project file](CppQtProjectFile.md), add the following lines:

```
QMAKE_CXX = gcc
QMAKE_CXXFLAGS = -x c
```
 
## ![Qt Creator](PicQtCreator.png) How to set the C compiler to the C99 standard in [Qt Creator](CppQtCreator.md)?

In the [project file](CppQtProjectFile.md), add the following lines:

```
QMAKE_C = gcc
QMAKE_CFLAGS = -x c -std=c99
```

## [Advice](CppAdvice.md)

 * Ideally, a program should be statically type safe [5]
 * Compile cleanly at high warning levels [1,3] 
 * Prefer [compile errors](CppCompileError.md) to [runtime errors](CppRuntimeError.md) [2,4]

## External links

 * [Codepad online compiler](http://www.codepad.org)
 * [Comeau online compiler](http://www.comeaucomputing.com/tryitout)
 * [IDE one online compiler](http://www.ideone.com)

# [References](CppReferences.md)

 * [1] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 1: 'Compile cleanly at high warning levels'.
 * [2] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14: 'Prefer compile- and link-time errors to run-time errors'.
 * [3] [Linus Torvalds](LinusTorvalds.md). [Re:[PATCH] Don't compare unsigned variable for &lt;0 in sys\_prctl()](http://linux.derkeiler.com/Mailing-Lists/Kernel/2006-11/msg08325.html). 2006-11-28. Retrieved on 2010-09-20. 'Friends don't let friends use [gcc] "-W"'
 * [4] [C++ Core Guidelines: P.5: Prefer compile-time checking to run-time checking](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p5-prefer-compile-time-checking-to-run-time-checking)
 * [5] [C++ Core Guidelines: P.4: Ideally, a program should be statically type safe](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p4-ideally-a-program-should-be-statically-type-safe)
