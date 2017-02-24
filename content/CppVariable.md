
 

 

 

 

 

([C++](Cpp.md)) [Variable](CppVariable.md)
============================================

 

A [variable](CppVariable.md) is something to store data in. This data
can be of any [data type](CppDataType.md). The name of the
[variable](CppVariable.md) is called its
[identifier](CppIdentifier.md).

 

In the code example below, there are two variables, 'number' and 'i':

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  int main() {   int number = 0;   for (int i = 0; i!=10; ++i)   {     number+=i;     std::cout << i << " : " << number << std::endl;   } }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

This produces the following screen output:

 

  ----------------------------------------------------------------------
  ` 0 : 0 1 : 1 2 : 3 3 : 6 4 : 10 5 : 15 6 : 21 7 : 28 8 : 36 9 : 45`
  ----------------------------------------------------------------------

 

The [scope](CppScope.md) of the [variable](CppVariable.md) 'number' is
from the line it is [declared](CppDeclaration.md) to the end of
[main](CppMain.md).

 

The [scope](CppScope.md) of the [variable](CppVariable.md) 'i' is
inside the [for](CppFor.md)-loop.

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Give a meaningful name to an [identifier](CppIdentifier.md) \[1\]
-   Don't [declare](CppDeclaration.md) a [variable](CppVariable.md)
    until you have a value to initialize it with \[2,4,6-7\]
-   [Declare](CppDeclaration.md) [variables](CppVariable.md) as
    [locally](CppLocal.md) as possible \[5\]
-   Although it is not always necessary to
    [initialize](CppInitialize.md) every [variable](CppVariable.md)
    explicitly, doing so will help you avoid many kinds of problems
    \[8\]
-   [Declare](CppDeclaration.md) only one [variable](CppVariable.md)
    in each [declaration](CppDeclaration.md) \[9,10\]
-   When [declaring](CppDeclaration.md) a [variable](CppVariable.md),
    provide a [comment](CppComment.md) that explains the
    [variable](CppVariable.md)'s purpose in the program \[9\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9.1: 'Use meaningful names'
2.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (3rd edition). 1997. ISBN: 0-201-88954-4. Item 6.5.10:
    'Don't declare a variable until you have a value to initialize
    it with'.
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). Programming. 2009.
    ISBN: 978-0-321-54372-1. Chapter 5.9.1: 'Use meaningful names'
4.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Paragraph 19: 'Always initialize variables'
5.  [Herb Sutter](CppHerbSutter.md), [Andrei
    Alexandrescu](CppAndreiAlexandrescu.md). C++ coding standards: 101
    rules, guidelines, and best practices. 2005. ISBN: 0-32-111358-6.
    Paragraph 18: 'Declare variables as locally as possible'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice, page 169: '\[21\] Avoid uninitialized variables'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 9.8.
    Advice, page 240: '\[1\] Don't declare a variable until you have a
    value to initialize it with'
8.  Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Error Prevention
    Tip 2.1. page 25: 'Although it is not always necessary to initialize
    every variable explicitly, doing so will help you avoid many kinds
    of problems.'
9.  Paul Deitel, Harvey Deitel. C++11 for progrgrammers (2nd edition).
    2014. ISBN: 978-0-13-343985-4. Chapter 2.4, Good Programming
    Practice 2.3. page 26: 'Declare only one variable in each
    declaration and provide a comment that explains the variable's
    purpose in the program.'
10. [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 6.6.
    Advice. page 169: '\[11\] Declare one name (only) per declaration'

 

 

 

 

 

 

