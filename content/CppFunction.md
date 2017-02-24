



 

 

 

 

 

([C++](Cpp.htm)) [function](CppFunction.htm)
============================================

 

There are multiple classes with the name '[function](CppFunction.htm)':

1.  ![Boost](PicBoost.png) [Boost.Function](CppBoostFunction.htm): the
    [Boost](CppBoost.htm) [library](CppLibrary.htm)
2.  ![Boost](PicBoost.png) [boost::function](CppBoostFunction.htm): the
    function wrapper in the [Boost.Function](CppBoostFunction.htm)
    [library](CppLibrary.htm)
3.  ![C++11](PicCpp11.png) [std::function](CppStdFunction.htm): the
    function wrapper in the [C++11](Cpp11.htm) [STL](CppStl.htm)

 

A [function](CppFunction.htm) (in general) is a callable piece of code
that performs a specific general task with as little information as
possible ([Why would you want this? Go to this page to view the purpose
of using functions](CppFunctionPurpose.htm)).

 

There are multiple types of functions:

-   Free functions: synonym for [helper function](CppHelperFunction.htm)
-   [Helper functions](CppHelperFunction.htm)
-   [Member functions](CppMemberFunction.htm)
-   [Template functions](CppTemplateFunction.htm)

 

A [function declaration](CppFunctionDeclaration.htm) states what a
[function](CppFunction.htm) needs and [returns](CppReturn.htm). A
[function definition](CppFunctionDefinition.htm) states how a
[function](CppFunction.htm) uses its [arguments](CppArgument.htm) and
calculates what to [return](CppReturn.htm).

 

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  //SayHello is a function that takes no arguments and returns nothing void SayHello() {   std::cout << "Hello world" << std::endl; }  //main is a special function: this form of main takes no arguments //and returns the program's error code int main() {   SayHello(); }`
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

A [function](CppFunction.htm) that accompanies a [class](CppClass.htm)
(and is non-[friend](CppFriend.htm)) is called a [free
function](CppFreeFunction.htm).

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Consider using proper [function design](CppFunctionDesign.htm).
    Note: many points of [advice](CppAdvice.htm)!
-   Assume that every [exception](CppException.htm) that can be
    [thrown](CppThrow.htm) by a [function](CppFunction.htm) will be
    [thrown](CppThrow.htm) \[1\]

 

 

 

 

 

External links
--------------

 

-   [WikiPedia's page about
    functions](http://en.wikipedia.org/wiki/Function_%28computer_science%29)

 

 

 

 

 

[Reference](CppReferences.htm)
------------------------------

 

1.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 13.7.
    Advice. page 387: '\[33\] Assume that every exception that can be
    thrown by a function will be thrown'

 

 

 

 

 





 



