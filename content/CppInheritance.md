# ([C++](Cpp.md)) [inheritance](CppInheritance.md)

[Inheritance](CppInheritance.md) is a technique to re-use
[members](CppMember.md) of a [class](CppClass.md).

There are multiple types of [inheritance](CppInheritance.md):

-   [implementation inheritance](CppImplementationInheritance.md)
-   [interface inheritance](CppInterfaceInheritance.md)
-   [multiple inheritance](CppMultipleInheritance.md)

There are three modes of [inheritance](CppInheritance.md):

1.  [public inheritance](CppPublicInheritance.md), an 'is-a-kind-of' relationship, the most commonly used mode of [inheritance](CppInheritance.md)
2.  [protected inheritance](CppProtectedInheritance.md), an obscure type of relationship
3.  [private inheritance](CppPrivateInheritance.md), an 'is-implemented-in-terms-of' relationship \[1\]


## [Examples](CppExample.md)

-   [inheritance example 1: basics](CppInheritanceExample1.md)

## [advice](CppAdvice.md)

-   Prefer [composition](CppComposition.md) to [inheritance](CppInheritance.md) \[2\]

## Notes to self

-   When in doubt, don't use [inheritance](CppInheritance.md): it is far far easier to correct when you've used composition too long, than the other way around

## External links

 * [Wikipedia's page about inheritance](http://en.wikipedia.org/wiki/Inheritance_(computer_science))
 * [C++ Weekly -Ep 103 - Learning "Modern" C++ - 3: Inheritance](https://youtu.be/43qyUASBeUc)

## [References](CppReferences.md)

  * 1.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).ISBN:0-321-33487-6. Item 39: 'Use private inheritance judiciously'
  * 2.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Chapter 34: 'Prefer composition to inheritance'.
