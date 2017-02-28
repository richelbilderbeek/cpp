# ([C++](Cpp.md)) [function](CppFunction.md)

There are multiple classes with the name '[function](CppFunction.md)':

1.  ![Boost](PicBoost.png) [Boost.Function](CppBoostFunction.md): the
    [Boost](CppBoost.md) [library](CppLibrary.md)
2.  ![Boost](PicBoost.png) [boost::function](CppBoostFunction.md): the
    function wrapper in the [Boost.Function](CppBoostFunction.md)
    [library](CppLibrary.md)
3.  ![C++11](PicCpp11.png) [std::function](CppStdFunction.md): the
    function wrapper in the [C++11](Cpp11.md) [STL](CppStl.md)

A [function](CppFunction.md) (in general) is a callable piece of code
that performs a specific general task with as little information as
possible ([Why would you want this? Go to this page to view the purpose
of using functions](CppFunctionPurpose.md)).

There are multiple types of functions:

-   Free functions: synonym for [helper function](CppHelperFunction.md)
-   [Helper functions](CppHelperFunction.md)
-   [Member functions](CppMemberFunction.md)
-   [Template functions](CppTemplateFunction.md)

A [function declaration](CppFunctionDeclaration.md) states what a
[function](CppFunction.md) needs and [returns](CppReturn.md). A
[function definition](CppFunctionDefinition.md) states how a
[function](CppFunction.md) uses its [arguments](CppArgument.md) and
calculates what to [return](CppReturn.md).

```
#include <iostream>

///say_hello is a function that takes no arguments and returns nothing
void say_hello()
{
  std::cout << "Hello world\n";
}

//main is a special function: this form of main takes no arguments
//and returns the program's error code. At the closing curly bracked,
//'return 0;' is implicitly added
int main()
{
  say_hello();
}
``` 

A [function](CppFunction.md) that accompanies a [class](CppClass.md)
(and is non-[friend](CppFriend.md)) is called a [free
function](CppFreeFunction.md).

## [Advice](CppAdvice.md)

-   Consider using proper [function design](CppFunctionDesign.md).
    Note: many points of [advice](CppAdvice.md)!
-   Assume that every [exception](CppException.md) that can be
    [thrown](CppThrow.md) by a [function](CppFunction.md) will be
    [thrown](CppThrow.md) \[1\]
-   Implement binary [operators](CppOperator.md) as free [functions](CppFunction.md) [2]
-   Do not use function template specialization [3]
-   If you write [iterator](CppIterator.md)-based [functions](CppFunction.md), 
    provide a user-friendly [interface](CppInterface.md) on top of them [4]
-   Short [functions](CppFunction.md) should be [inlined](CppInline.md) and [defined](CppDefinition.md) in [headers](CppHeaderFile.md) [5]
-   Large [functions](CppFunction.md) should be [declared](CppDeclaration.md) in [headers](CppHeaderFiel.md) and [defined](CppDefinition.md) in source files [5]

## External links

-   [WikiPedia's page about
    functions](http://en.wikipedia.org/wiki/Function_%28computer_science%29)

## [Reference](CppReferences.md)

1.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[33\] Assume that every exception that can be
    thrown by a function will be thrown'
2.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 2.7.3: 'Implement binary operators as free functions'
3.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 3.6.2.1: 'Do not use function template specialization!'
4.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 4.1.5: 'If you write iterator-based functions, provide a user-friendly interface on top of them'
5.  Gottschling, Peter. Discovering Modern C++: An Intensive Course for Scientists, Engineers, and Programmers. Addison-Wesley Professional, 2015.
    Chapter 7.2.3.2: 'Short functions should be inline and defined in headers. Large functions should be declared in headers and defined in source files'

