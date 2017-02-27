# ([C++](Cpp.md)) [Big Six](CppBigSix.md)

Since [C++11](Cpp11.md) the [Big Six](CppBigSix.md) are the following six special
[class](CppClass.md) [member functions](CppMemberFunction.md):

1.  [Default constructor](CppDefaultConstructor.md)
2.  [Copy constructor](CppCopyConstructor.md)
3.  [Move constructor](CppMoveConstructor.md)
4.  [Copy assignment operator](CppCopyAssignmentOperator.md)
5.  [Move assignment operator](CppMoveAssignmentOperator.md)
6.  [Destructor](CppDestructor.md)

In [C++98](Cpp98.md) there were only four, called [the Big Four](CppBigFour.md).

## Example
 
```
#include <iostream>

///Gossip is a class that tells you what is happening to it
struct Gossip
{
  Gossip() { std::cout << "Default constructor\n"; }
  Gossip(const Gossip&) { std::cout << "Copy constructor\n"; }
  Gossip(const Gossip&&) { std::cout << "Move constructor\n"; }
  ~Gossip() { std::cout << "Destructor\n"; }
  Gossip& operator=(const Gossip&) { std::cout << "Copy assignment operator\n"; }
  Gossip& operator=(const Gossip&&) { std::cout << "Move assignment operator\n"; }
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

## Advice

-   Regarding the six operations above, implement as little as possible and declare as much as possible. Any operation not
    implemented shall be declared as default or delete [1]

## [References](CppReferences.md)

1.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 2.5: 'Regarding the six operations above, implement as little as possible and declare as much as possible. Any operation not
    implemented shall be declared as default or delete'


