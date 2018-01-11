# [Test/test](CppTest.md)

[Testing](CppTest.md) is the process of validating your code. [TDD
('Test Driven Design')](CppTdd.md) is a type of software design techniques
[6] that uses [testing](CppTest.md) to incrementally write and change
software.

There are multiple types of [tests](CppTest.md), which overlap:

 * [regression testing](CppRegressionTest.md): check that new changes does not break other code.
 * [Graphical User Interface testing](CppGuiTest.md): check that the [GUI](CppGui.md) behaves as expected

[Boost.Test](CppBoostTest.md) is a [Boost](CppBoost.md)
[library](CppLibrary.md) for [testing](CppTest.md).

## [Advice](CppAdvice.md)

 * Distributing testing throughout the design hierarchy can be much more effective per testing dollar than testing at only the highest-level interface [1]
 * Testing a component in isolation is an effective way to ensure reliability [2]
 * Thorough [regression testing](CppRegressionTest.md) is expensive but essential; the appropriate time to create thorough [regression tests](CppRegressionTest.md) is tied to the stability of the subsystem to be tested [3]
 * Write the [test](CppTest.md) code first [4,5]
 * Keep the [test](CppTest.md) code with the [class](CppClass.md) to be tested [4]
 * Write the [test](CppTest.md) code to verify that your [class design](CppClassDesign.md) is complete [5]
 * Automate the running of your [tests](CppTest.md) [4, 8]
 * If you can’t write [test](CppTest.md) code, you don’t know what your [class](CppClass.md) looks like [5]
 * The act of writing [test](CppTest.md) code will often show features or constraints you were previously unaware of [5]
 * Test as many properties as you can [7]

## External links

 * [SWAMP](https://continuousassurance.org): free testing of your code, sponsored by the Department of Homeland Security (DHS) in the United States of America

## [References](CppReferences.md)

 * [1] [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Section D.5. Principles, chapter 4, page 825: 'Distributing testing throughout the design hierarchy can be much more effective per testing dollar than testing at only the highest-level interface'
 * [2] [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Section D.5. Principles, chapter 4, page 825: 'Testing a component in isolation is an effective way to ensure reliability'
 * [3] [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design. 1996. ISBN: 0-201-63362-0. Section D.5. Principles, chapter 4, page 826: 'Thorough regression testing is expensive but essential; the appropriate time to create thorough regression tests is tied to the stability of the subsystem to be tested'
 * [4] [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition, volume 1. 2000. ISBN: 0-13-979809-9. Chapter B: Programming Guidelines. Item 11: 'Write the test code first (before you write the class), and keep it with the class. Automate the running of your tests through a makefile or similar tool. This way, any changes can be automatically verified by running the test code, and you’ll immediately discover errors. Because you know that you have the safety net of your test framework, you will be bolder about making sweeping changes when you discover the need. Remember that the greatest improvements in languages come from the built-in testing that type checking, exception handling, etc., provide, but those features take you only so far. You must go the rest of the way in creating a robust system by filling in the tests that verify features that are specific to your class or program.'
 * [5] [Bruce Eckel](CppBruceEckel.md). Thinking in C++, second edition, volume 1. 2000. ISBN: 0-13-979809-9. Chapter B: Programming Guidelines. Item 12: 'Write the test code first (before you write the class) in order to verify that your class design is complete. If you can’t write test code, you don’t know what your class looks like. In addition, the act of writing the test code will often flush out additional features or constraints that you need in the class – these features or constraints don’t always appear during analysis and design.'
 * [6] [Jeff Langr](CppJeffLangr.md). Modern C++ Programming with Test-Driven Development. 2013. ISBN: 978-1-937785-48-2. Introuction chapter, page xiv: 'Test-Driven Development (TDD), a software design technique devised in the late 1990s, [...]'
 * [7] Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015. Chapter 1.6: 'Test as many properties as you can'
 * [8] Henney, Kevlin. 97 things every programmer should know: collective wisdom from the experts. " O'Reilly Media, Inc.", 2010.  Rajith Attapattu. Chapter 'Test while you sleep (and over weekends)'
