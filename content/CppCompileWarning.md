# ([C++](Cpp.md)) [Compile warning](CppCompileWarning.md)

Warning emitted by the [compiler](CppCompiler.md), but does not prevent
program execution. A [compile error](CppCompileError.md) does prevent
program execution.

 * ['auto' will change meaning in C++0x; please remove it](CppCompileWarningAutoWillChangeMeaningInC++0x.md)
 * [Cannot create pre-compiled header: initialized data in header](CppCompileWarningCannotCreatePreCompiledHeaderInitializedDataInHeader.md)
 * [left shift count &gt;= width of type](CppCompileWarningLeftShiftCounterBiggerOrEqualToWidthOfType.md)
 * [lexical\_cast.hpp: Negating unsigned value](CppCompileWarningLexical_castHppNegatingUnsignedValue.md)
 * [Object::connect: No such slot QDialog::my\_slot()](CppCompileWarningNoSuchSlot.md)
 * [type qualifiers ignored on function return type](CppCompileWarningTypeQualifiersIgnoredOnFunctionReturnType.md)
 * [unused parameter 'seq'](CppCompileWarningUnusedParameterSeq.md)

## ![Qt Creator](PicQtCreator.png) How to add extra warnings in [Qt Creator](CppQtCreator.md)?

In the [project file](CppQtProjectFile.md), add the following line:

``` 
QMAKE_CXXFLAGS += -Wextra
```

## ![Qt Creator](PicQtCreator.png) How to add the [compile warnings](CppCompileWarning.md) of 'Effective C++' by [Scott Meyers](CppScottMeyers.md) in [Qt Creator](CppQtCreator.md)?

In the [project file](CppQtProjectFile.md), add the following line:

```
QMAKE_CXXFLAGS += -Weffc++
```

## ![Qt Creator](PicQtCreator.png) How to let [compile warnings](CppCompileWarning.md) be treated like [compile errors](CppCompileError.md) in [Qt Creator](CppQtCreator.md)?

In the [project file](CppQtProjectFile.md), add the following line:

```
QMAKE_CXXFLAGS += -Werror
```
 
## [Advice](CppAdvice.md)

 * Compile cleanly at high warning levels [1,3] 
 * Prefer [compile errors](CppCompileError.md) to [runtime errors](CppRuntimeError.md) [2,4]

# [References](CppReferences.md)

 * [1] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 1: 'Compile cleanly at high warning levels'.
 * [2] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 14: 'Prefer compile- and link-time errors to run-time errors'.
 * [3] [Linus Torvalds](LinusTorvalds.md). [Re:[PATCH] Don't compare unsigned variable for &lt;0 in sys\_prctl()](http://linux.derkeiler.com/Mailing-Lists/Kernel/2006-11/msg08325.html). 2006-11-28. Retrieved on 2010-09-20. 'Friends don't let friends use [gcc] "-W"'
 * [4] [C++ Core Guidelines: P.5: Prefer compile-time checking to run-time checking](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#p5-prefer-compile-time-checking-to-run-time-checking)
