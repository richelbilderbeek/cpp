

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).

 

 

 

 

 

([C++](Cpp.htm)) [delegation](CppDelegation.htm)
================================================

 

[delegation](CppDelegation.htm) is a technique that can be used,
depending on the [standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [delegation](CppDelegation.htm) in the
    [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [delegation](CppDelegation.htm) in the
    [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

 

 

 

 

![C++98](PicCpp98.png) [delegation](CppDelegation.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------------------

 

[Delegation](CppDelegation.htm) is not supported in [C++98](Cpp98.htm).

 

 

 

 

 

![C++11](PicCpp11.png) [delegation](CppDelegation.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppDelegation' (zip)](CppDelegation.zip)

 

[Delegation](CppDelegation.htm) is the technique of
[constructors](CppConstructor.htm) calling each other:

 

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

 

 

 

 

 

[Go back to Richel Bilderbeek's C++ page](Cpp.htm).



 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
