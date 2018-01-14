# ([C++](Cpp.md)) [namespace](CppNamespace.md)

[namespace](CppNamespace.md) is a [keyword](CppKeyword.md) to group
[functions](CppFunction.md) and [classes](CppClass.md).

To call something from a certain [namespace](CppNamespace.md), write
the [namespace](CppNamespace.md)'s name in front, followed by the
[scope operator, ::](CppOperatorScope.md).

[Functions](CppFunction.md) and [classes](CppClass.md) that are not
put into a [namespace](CppNamespace.md) reside in the
[global](CppGlobal.md) [namespace](CppNamespace.md).

The default [namespace](CppNamespace.md) used is the
[global](CppGlobal.md) [namespace](CppNamespace.md). You can change
this by using the [keyword](CppKeyword.md) [using](CppUsing.md).

All [STL](CppStl.md) [functions](CppFunction.md) and
[classes](CppClass.md) are in the [namespace](CppNamespace.md)
[std](CppStd.md).

## [Examples](CppExample.md)

 * [namespace example 1: scope](CppNamespaceExample1.md)

## [Advice](CppAdvice.md)

 * Always use [namespaces](CppNamespace.md) [13]
 * Use [namespaces](CppNamespace.md) to express logical structure [1]
 * Use [namespaces](CppNamespace.md) to associate [helper functions](CppHelperFunction.md) with the [class](CppClass.md) they work on [12]
 * Place every nonlocal name, except [main](CppMain.md), in some [namespace](CppNamespace.md) [2]
 * Design a [namespace](CppNamespace.md) so that you can conveniently us it without accidentally gaining access to unrelated [namespaces](CppNamespace.md) [3]
 * Avoid very short names for [namespaces](CppNamespace.md) [4]
 * If necessary, use [namespace](CppNamespace.md) aliases to abbreviate long [namespace](CppNamespace.md) names [5]
 * Avoid placing heavy notational burdens on users of your [namespaces](CppNamespace.md) [6]
 * Use seperate [namespaces](CppNamespace.md) for [interfaces](CppInterface.md) and [implementations](CppImplementation.md) [7]
 * Use the Namespace::member notation when [defining](CppDefinition.md) [namespace](CppNamespace.md) members [8], as this avoids the possibility to accidentally add new members to the namespace

## [Reference](CppReferences.md)

 * [1] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[1] Use namespaces to express logical structure'
 * [2] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[2] Place every nonlocal name, except main(), in some namespace'
 * [3] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[3] Design a namespace so that you can conveniently us it without accidentally gaining access to unrelated namespaces'
 * [4] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[4] Avoid very short names for namespaces'
 * [5] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[5] If necessary, use namespace aliases to abbreviate long namespace names'
 * [6] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[6] Avoid placing heavy notational burdens on users of your namespaces'
 * [7] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[7] Use seperate namespaces for interfaces and implementations'
 * [8] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 14.5. Advice. page 417: '[8] Use the Namespace::member notation when defining namespace members'
 * [9] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 57: 'Keep a type and its nonmember function interface in the same namespace'
 * [10] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 58: 'Keep types and functions in seperate namespaces unless they're specifically intended to work together'
 * [11] [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 59: 'Don't write namespace usings in a header file or before an \#include'
 * [12] [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 18.5. Advice. page 548: '[7] Use namespaces to associate helper functions with "their" class'
 * [13] [Jason Turner, cppbestpractices: Always Use Namespaces](https://github.com/lefticus/cppbestpractices/blob/master/03-Style.md#always-use-namespaces)
