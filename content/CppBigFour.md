# ([C++](Cpp.md)) [Big Four](CppBigFour.md)

In [C++98](Cpp98.md) the [Big Four](CppBigFour.md) are the following four special
[class](CppClass.md) [member functions](CppMemberFunction.md) \[1\]:

1.  [Default constructor](CppDefaultConstructor.md)
2.  [Copy constructor](CppCopyConstructor.md)
3.  [Copy assignment operator](CppCopyAssignmentOperator.md)
4.  [Destructor](CppDestructor.md)

In [C++11](Cpp11.md) there are the [Big Six](CppBigSix.md).

## Example
 
```
#include <iostream>

///Gossip is a class that tells you what is happening to it
struct Gossip
{
  Gossip() { std::cout << "Default constructor\n"; }
  Gossip(const Gossip&) { std::cout << "Copy constructor\n"; }
  ~Gossip() { std::cout << "Destructor\n"; }
  Gossip& operator=(const Gossip&) { std::cout << "Copy assignment operator\n"; }

};

int main()
{
  {
    Gossip g; //Default constructor
    const Gossip h(g); //Copy constructor
    g = h; //Copy assignment operator
    //Destructor of g and h
  }
}
```

Screen output:

```
Default constructor
Copy constructor
Copy assignment operator
Destructor
Destructor
``` 

## [References](CppReferences.md)

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Introduction 'Class Design and Inheritance'

