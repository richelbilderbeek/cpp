
 

 

 

 

 

([C++](Cpp.md)) [delegation](CppDelegation.md)
================================================

 

[delegation](CppDelegation.md) is a technique that can be used,
depending on the [standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [delegation](CppDelegation.md) in the
    [C++98](Cpp98.md) [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [delegation](CppDelegation.md) in the
    [C++11](Cpp11.md) [standard](CppStandard.md)

 

 

 

 

 

![C++98](PicCpp98.png) [delegation](CppDelegation.md) in the [C++98](Cpp98.md) [standard](CppStandard.md)
------------------------------------------------------------------------------------------------------------

 

[Delegation](CppDelegation.md) is not supported in [C++98](Cpp98.md).

 

 

 

 

 

![C++11](PicCpp11.png) [delegation](CppDelegation.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppDelegation' (zip)](CppDelegation.zip)

 

[Delegation](CppDelegation.md) is the technique of
[constructors](CppConstructor.md) calling each other:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------
  ` struct MyClass {   MyClass() : MyClass(42) {}   MyClass(const int x) : m_x(x) {}   int m_x; };  int main() {   MyClass a;   MyClass b(1); }`
  ------------------------------------------------------------------------------------------------------------------------------------------------

 

Or a more elaborate example:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  struct MyClass {   MyClass() : MyClass(42) { std::cout << "Default constructor\n"; }   MyClass(const int x) : MyClass(x,x*x) { std::cout << "Constructor with one argument\n";}   MyClass(const int x, const int y) : m_x(x), m_y(y) { std::cout << "Setting the two arguments\n";}   const int m_x;   const int m_y; };  int main() {   std::cout << "Creating an instance of MyClass without arguments\n";   MyClass a;   std::cout << "\nCreating an instance of MyClass with one argument\n";   MyClass b(1);   std::cout << "\nCreating an instance of MyClass with two arguments\n";   MyClass c(1,2); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Producing the screen output:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` Creating an instance of MyClass without arguments Setting the two arguments Constructor with one argument Default constructor  Creating an instance of MyClass with one argument Setting the two arguments Constructor with one argument  Creating an instance of MyClass with two arguments Setting the two arguments`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppDelegation' (zip)](CppDelegation.zip)

 

 

 

 

 

 

