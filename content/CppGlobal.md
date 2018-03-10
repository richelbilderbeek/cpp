# [global](CppGlobal.md)

A [global](CppGlobal.md) (also: [global variable](CppGlobal.md)) is a
[variable](CppVariable.md) that is visible by all code (as opposite of
a [local](CppLocal.md) [variable](CppVariable.md), which is only
visible in its [scope](CppScope.md)). A non-[const](CppConst.md)
[global](CppGlobal.md) is one of the biggest contributors of increasing
[state](CppState.md)-space.

## [Advice](CppAdvice.md)

 * Avoid using [global](CppGlobal.md) data [1-6,8-9] or non-const global data [10]. Instead, [declare](CppDeclaration.md) [variables](CppVariable.md) as [locally](CppLocal.md) as possible [7]

## See also

 * [Compare the speed of local versus global variables](CppLocalVersusGlobal.md)

## External links

 * [CppCon 2017: Nir Friedman 'What C++ developers should know about globals (and the linker)'](https://youtu.be/xVT1y0xWgww)

## [References](CppReferences.md)

 * [1] [Andrei Alexandrescu](CppAndreiAlexandrescu.md). Modern C++ Design. 2001. ISBN: 0201704315. Item 10: 'Minimize global and shared data'.
 * [2] Stephen C. Dewhurst. C++ Gotchas. 2003. ISBN: 0-321-12518-5.  Gotcha #3: 'Avoid global variables'.
 * [3] [C++ FAQ Lite](https://isocpp.org/wiki/faq/coding-standards#global-vars): 'The names of global variables should start with //' and 'Instead of using a global variable, you should seriously consider if there are ways to limit the variable's visibility and/or lifetime'.
 * [4] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (3rd edition).ISBN: 0-201-88954-4. Chapter 1.8.2.a: 'Don't use global data (use members)'
 * [5] [Jarrod Hollingworth](CppJarrodHollingworth.md) , Bob Swart, Mark Cashman, Paul Gustavson. Sams C++ Builder 6 Developer's Guide. ISBN: 0-672-32480-6. Chapter 3: 'Avoid using global variables'
 * [6] [Jesse Liberty](CppJesseLiberty.md) . Sams teach yourself C++ in 24 hours. ISBN: 0-672-32224-2. Hour 5, paragraph 'Global variables': 'In C++, global variables are avoided because they can create very confusing code that is hard to maintain.'
 * [7] [Andrei Alexandrescu](CppAndreiAlexandrescu.md). Modern C++ Design. 2001. ISBN: 0201704315. Item 18: 'Declare variables as locally as possible'.
 * [8] Joint Strike Fighter Air Vehicle C++ Coding Standards for the System Development and Demonstration Program. Document Number 2RDU00001 Rev C. December 2005. AV Rule 207: 'Unencapsulated global data will be avoided.'
 * [9] Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015. Chapter 1.2.4.1: 'Do not use global variables'
 * [10] [C++ Core Guidelines: I.2: Avoid non-const global variables](https://github.com/isocpp/CppCoreGuidelines/blob/master/CppCoreGuidelines.md#i2-avoid-non-const-global-variables)
