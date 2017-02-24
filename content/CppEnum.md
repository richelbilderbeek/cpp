



 

 

 

 

 

([C++](Cpp.md)) [enum](CppEnum.md)
====================================

 

[enum](CppEnum.md) is a [keyword](CppKeyword.md) to define an
[enumeration](CppEnum.md). Use enumerations to represent sets of named
constants \[7\].

 

Define operations on enumerations for safe and simple use \[9\]. Avoid
[enumerations](CppEnum.md) at file scope in [header
files](CppHeaderFile.md) \[5\]. Use a consistent method to identify
immutable values such as [enum](CppEnum.md) values \[6\].

 

In [C++11](Cpp11.md), prefer [class enums](CppEnumClass.md) over plain
[enums](CppEnum.md) to minimize surprise \[8\].

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) Example: with and without [enum](CppEnum.md)
------------------------------------------------------------------------------------------

 

Below is an example of a code that did not use [enum](CppEnum.md).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Without using enum, not preferred void sayHello(const int& sex) {   switch(sex)   {     case 0: std::cout << "(male voice) Hello!" << std::endl; break;     case 1: std::cout << "(female voice) Hello!" << std::endl; break;     case 2: std::cout << "(hermaphrodite voice) Hello!" << std::endl; break;   } }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

How can one expect to memorize all these values for sexes?
[enum](CppEnum.md) relieves things:

 

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` enum Sex { male, female, hermaphrodite };  void sayHello(const Sex& sex) {   switch(sex)   {     case male:          std::cout << "(male voice) Hello!" << std::endl; break;     case female:        std::cout << "(female voice) Hello!" << std::endl; break;     case hermaphrodite: std::cout << "(hermaphrodite voice) Hello!" << std::endl; break;   } }`
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Of course, the example without [enum](CppEnum.md) can be converted to
the example below, using [global](CppGlobal.md) constants. Prefer not
to use [globals](CppGlobal.md) \[1-4\].

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //Without using enum, not preferred const int male          = 0; //Not preferred const int female        = 1; //Not preferred const int hermaphrodite = 2; //Not preferred  void sayHello(const int& sex) {   switch(sex)   {     case male:          std::cout << "(male voice) Hello!" << std::endl; break;     case female:        std::cout << "(female voice) Hello!" << std::endl; break;     case hermaphrodite: std::cout << "(hermaphrodite voice) Hello!" << std::endl; break;   } }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++98](PicCpp98.png)![C++11](PicCpp11.png) Example how to define an [enum](CppEnum.md) and [overloading](CppOverload.md) [operator](CppOperator.md)[&lt;&lt;](CppOperatorStreamOut.md) for it
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  enum Sign { minus = -1, none = 0, plus = 1};  std::ostream&  operator<<(std::ostream& os, const Sign& s) {   os << (s == minus ? "-" : (s == none ? " " : "+") );   return os; }  int main() {   const Sign a = plus;   const Sign b = none;   const Sign c = minus;   std::cout     << "Plus   : " << a     << "\nNo sign: " << b     << "\nMinus  : " << c     << std::endl; }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [enum classes](CppEnumClass.md) to [enums](CppEnum.md)
    \[10,11\]
-   Use UpperCamelCase for enum names \[12\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Chapter 10: 'Minimize global and shared data'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Chapter 1.8.2.a:
    'Don't use global data (use members)'
3.  [Jarrod Hollingworth](CppJarrodHollingworth.md), [Bob
    Swart](CppBobSwart.md), [Mark Cashman](CppMarkCashman.md), [Paul
    Gustavson](CppPaulGustavson.md). Sams C++ Builder 6
    Developer's Guide. 2002. ISBN:0-672-32480-6. Chapter 3: 'Avoid using
    global variables'
4.  [Scott Meyers](CppScottMeyers.md). Effective C++ (3rd edition).
    ISBN: 0-321-33487-6. Item 2: Prefer consts, enums and inlines to
    \#defines
5.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.3.3: 'Avoid enumerations,
    typedefs and constants at file scope in .h files'
6.  [John Lakos](CppJohnLakos.md). Large-Scale C++ Software Design.
    1996. ISBN: 0-201-63362-0. Chapter 2.7: 'Use a consistent method
    (such as all uppercase with underscores) to identify immutable
    values such as enumerators, const data and preprocessor constants'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[5\] Use enumerations to represent sets of named
    constants'
8.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[6\] Prefer class enums over "plain" enums to
    minimize surprises'
9.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[7\] Define operations on enumerations for safe
    and simple use'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 8.5.
    Advice. page 224: '\[6\] Prefer class enums over "plain" enums to
    minimize surprises'
11. [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. ' Prefer enum classes
    to enums'
12. Trevor Misfeldt, Gregory Bumgardner, Andrew Gray. The elements of
    C++ style. 2004. ISBN: 978-0-521-89308-4. Chapter 4.2, page 18: 'Use
    UpperCamelCase for classes, constants, structures, enumerations, and
    typedefs'

 

 

 

 

 





 



