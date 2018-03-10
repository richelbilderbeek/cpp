# ([C++](Cpp.md)) [virtual](CppVirtual.md)

[virtual](CppVirtual.md) is a [keyword](CppKeyword.md) to denote that
a [class](CppClass.md) [member function](CppMemberFunction.md) might
have different behaviour in its [derived classes](CppDerivedClass.md).

## Example

Humans say hello differently. In this example there are two kinds of
humans that say hello differently: SilentHuman and LoudHuman:

```c++
#include <iostream>

struct Human
{
  virtual void SayHello() const = 0;
  virtual ~Human() {} // All base classes must have a public virtual destructor [1]
};

struct SilentHuman : public Human
{
  void SayHello() const { std::cout << "...hello...\n"; }
};

struct LoudHuman : public Human
{
  void SayHello() const { std::cout << "HELLO!\n"; }
};
``` 

Note that it is decided that a plain Human cannot say hello. This can be
stated by ending the declaration of SayHello with '=0'. This also makes
it impossible to create a Human (you can only create (derived) types of
Human). This makes Human an [abstract base
class](CppAbstractBaseClass.md).

## [Advice](CppAdvice.md)

-   If a [class](CppClass.md) has a [virtual](CppVirtual.md) [member functions](CppMemberFunction.md), it needs a [virtual](CppVirtual.md) [destructor](CppDestructor.md) \[4,8\]
-   Avoid calling [virtual](CppVirtual.md) [member functions](CppMemberFunction.md) in [constructors](CppConstructor.md) and [destructors](CppDestructor.md) \[2\]
-   Don't call [virtual](CppVirtual.md) [member functions](CppMemberFunction.md) in [constructors](CppConstructor.md) and [destructors](CppDestructor.md) \[6\]
-   Avoid [public](CppPublic.md) [virtual](CppVirtual.md) [member functions](CppMemberFunction.md); prefer using the [Template Method Design Pattern](CppDesignPatternTemplateMethod.md) instead \[3\]

## External links

 * [C++ Weekly -Ep 103 - Learning "Modern" C++ - 3: Inheritance](https://youtu.be/43qyUASBeUc)

## [References](CppReferences.md)

 * 1.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 50: 'Make base class destructors public and virtual, or protected and nonvirtual'
 * 2.  [Herb Sutter](CppHerbSutter.md), [Andrei Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101 rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6. Item 49: 'Avoid calling virtual functions in constructors and destructors'
 * 3.  [Herb Sutter](CppHerbSutter.md). [Exceptional C++](CppExceptionalCpp.md). ISBN: 0-201-61562-2. Item 23, page 84, guideline: 'Avoid public virtual functions; prefer using the Template Method pattern instead'
 * 4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 17.7. Advice. page 525: '\[4\] If a class has a virtual function, it needs a virtual destructor'
 * 5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 20.7. Advice. page 611: '\[8\] A class with a virtual function should have a virtual destructor'
 * 6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 22.7. Advice. page 663: '\[7\] Don't call virtual functions during construction and destruction'
