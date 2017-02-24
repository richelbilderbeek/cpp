



 

 

 

 

 

([C++](Cpp.md)) [return](CppReturn.md)
========================================

 

[return](CppReturn.md) is a [keyword](CppKeyword.md) that ends a
[function](CppFunction.md) (or [member
function](CppMemberFunction.md)). Depending on the
[function](CppFunction.md), [return](CppReturn.md) might
[return](CppReturn.md) anything or nothing.

 

The following [function](CppFunction.md) calculates the square of an
[integer](CppInt.md):

 

  ------------------------------------------------------------------------------------------------------------------------
  ` ///Calculates the square of an integer int Square(const int x) {   const int solution = x * x;   return solution; }`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

If a [function](CppFunction.md) [returns](CppReturn.md) nothing (that
is, a [return](CppReturn.md) type of [void](CppVoid.md)), one can omit
the final [return](CppReturn.md):

 

  ----------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void SayHello() {   std::cout << "Hello\n";   //return; //No need to return from a void function }`
  ----------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Exception: [main](CppMain.md)
------------------------------

 

The [function](CppFunction.md) [main](CppMain.md) is special. It
[returns](CppReturn.md) an [integer](CppInt.md) error code of the
program, where a zero denotes a no-failure run. When
[main](CppMain.md)'s closing bracket is reached, the effect is
equivalent to (Standard, 3.6.1.5):

 

  --------------
  ` return 0;`
  --------------

 

Therefore, the following two pieces of code are equivalent:

 

  ------------------
  ` int main() {}`
  ------------------

 

  -----------------------------
  ` int main() { return 0; }`
  -----------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [return](CppReturn.md) in a [C++11](Cpp11.md) [lambda expression](CppLambdaExpression.htm)
-------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppLambdaExpression' (zip)](CppLambdaExpression.zip)

 

Program flow in a [C++11](Cpp11.md) [lambda
expression](CppLambdaExpression.md) differs from a [C++98](Cpp98.md)
[lambda expression](CppLambdaExpression.md) or
[BOOST\_FOREACH](CppBOOST_FOREACH.md): if you want to
[return](CppReturn.md) from a [function](CppFunction.md), all that
happens is that the [std::for\_each](CppFor_each.md) (or other
[algorithm](CppAlgorithm.md)) is terminated. The example below shows
this.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <vector>  void TestProgramFlow() {   //2-D std::vector, note 42 in the middle, from an initializer list   const std::vector<std::vector<int> > v     =     {       {  0, 1, 2, 3, 4 },       { 10,11,12,13,14 },       { 40,41,42,43,44 },       { 50,51,52,53,54 },       { 60,61,62,63,64 }     };   //First lambda expression   std::for_each(v.begin(),v.end(),     [](const std::vector<int>& w)     {       //Nested second lambda expression       std::for_each(w.begin(),w.end(),         [](const int i)         {           if (i == 42)           {             std::cout << "FOUND!\n";             return; //Terminates the second lambda expression,                     //Does not return from Test function           }         }       );     }   );   //Will get here, as the return statement only terminates   //the second lambda expression, instead of the Test function   assert(!"Should not get here"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------
  ` FOUND!`
  -----------

 

 

 

 

 





 



