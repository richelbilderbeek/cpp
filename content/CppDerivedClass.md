# ([C++](Cpp.md)) [Derived class](CppDerivedClass.md)

A [derived class](CppDerivedClass.md) is a [class](CppClass.md) that
has [inherited](CppInheritance.md) [member
variables](CppMemberVariable.md) and [member
functions](CppMemberFunction.md) from a [base class](CppBaseClass.md).

The code below shows how an Animal is used as a [base
class](CppBaseClass.md) and Cat and Dog are [derived
classes](CppDerivedClass.md) (of Animal).

```c++
#include <iostream>
#include <string>

struct Animal //Animal is a (non-abstract) base class
{
  //All animals have a name (consider making this a const member)
  std::string m_name;

  // * Herb Sutter, Andrei Alexandrescu. C++ coding standards: 101 rules, guidelines, and best practices. ISBN: 0-32-111358-6.
  //   Item 50: 'Make base class destructors public and virtual, or protected and nonvirtual'.
  virtual ~Animal() {} //All animals have a destructor
};

//A cat is a-kind-of animal
struct Cat : public Animal
{
  void Meow() const { std::cout << "Meow\n"; }
};

//A dog is a-kind-of animal
struct Dog : public Animal
{
  void Bark() const { std::cout << "Bark\n"; }
  bool m_has_bone;
};
```

## External links

 * [C++ Weekly -Ep 103 - Learning "Modern" C++ - 3: Inheritance](https://youtu.be/43qyUASBeUc)
