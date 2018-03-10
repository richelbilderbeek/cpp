# ([C++](Cpp.md)) [Base class](CppBaseClass.md)

A [base class](CppBaseClass.md) is a type of [class](CppClass.md) that
is used to [inherit](CppInheritance.md) member variables and [member
functions](CppMemberFunction.md) from.

Or: a [base class](CppBaseClass.md) is the entity that all [derived
classes](CppDerivedClass.md) share.

A special type of [base class](CppBaseClass.md) is the [abstract base
class](CppAbstractBaseClass.md).

## [Examples](CppExample.md)

-   [base class example 1: basics](CppBaseClassExample1.md)

## [Advice](CppAdvice.md)

-   All [base classes](CppBaseClass.md) must have a ([public](CppPublic.md)) [virtual](CppVirtual.md) [destructor](CppDestructor.md) \[1\]
-   Avoid [member variables](CppMemberVariable.md) in [base classes](CppBaseClass.md) intended as interfaces \[2\]
-   Use [base classes](CppBaseClass.md) with [member variables](CppMemberVariable.md) to support [implementation inheritance](CppImplementationInheritance.md) \[3\]

## External links

 * [C++ Weekly -Ep 103 - Learning "Modern" C++ - 3: Inheritance](https://youtu.be/43qyUASBeUc)

## [References](CppReferences.md)

 * 1.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6. Item 50: 'Make base class destructors public and virtual, or protected and nonvirtual'.
 * 2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4. Advice. page 640: '\[2\] Avoid data members in base classes intended as interfaces'
 * 3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 21.4. Advice. page 640: '\[7\] Use base classes with data members to support implementation inheritance'
