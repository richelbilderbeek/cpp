



 

 

 

 

 

([C++](Cpp.htm)) [return](CppReturn.htm)
========================================

 

[return](CppReturn.htm) is a [keyword](CppKeyword.htm) that ends a
[function](CppFunction.htm) (or [member
function](CppMemberFunction.htm)). Depending on the
[function](CppFunction.htm), [return](CppReturn.htm) might
[return](CppReturn.htm) anything or nothing.

 

The following [function](CppFunction.htm) calculates the square of an
[integer](CppInt.htm):

 

  ------------------------------------------------------------------------------------------------------------------------
  ` ///Calculates the square of an integer int Square(const int x) {   const int solution = x * x;   return solution; }`
  ------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

If a [function](CppFunction.htm) [returns](CppReturn.htm) nothing (that
is, a [return](CppReturn.htm) type of [void](CppVoid.htm)), one can omit
the final [return](CppReturn.htm):

 

  ----------------------------------------------------------------------------------------------------------------------------
  ` #include <iostream>  void SayHello() {   std::cout << "Hello\n";   //return; //No need to return from a void function }`
  ----------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

Exception: [main](CppMain.htm)
------------------------------

 

The [function](CppFunction.htm) [main](CppMain.htm) is special. It
[returns](CppReturn.htm) an [integer](CppInt.htm) error code of the
program, where a zero denotes a no-failure run. When
[main](CppMain.htm)'s closing bracket is reached, the effect is
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

 

 

 

 

 

![C++11](PicCpp11.png) [return](CppReturn.htm) in a [C++11](Cpp11.htm) [lambda expression](CppLambdaExpression.htm)
-------------------------------------------------------------------------------------------------------------------

 

-   [Download the Qt Creator project
    'CppLambdaExpression' (zip)](CppLambdaExpression.zip)

 

Program flow in a [C++11](Cpp11.htm) [lambda
expression](CppLambdaExpression.htm) differs from a [C++98](Cpp98.htm)
[lambda expression](CppLambdaExpression.htm) or
[BOOST\_FOREACH](CppBOOST_FOREACH.htm): if you want to
[return](CppReturn.htm) from a [function](CppFunction.htm), all that
happens is that the [std::for\_each](CppFor_each.htm) (or other
[algorithm](CppAlgorithm.htm)) is terminated. The example below shows
this.

 

  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <iostream> #include <vector>  void TestProgramFlow() {   //2-D std::vector, note 42 in the middle, from an initializer list   const std::vector<std::vector<int> > v     =     {       {  0, 1, 2, 3, 4 },       { 10,11,12,13,14 },       { 40,41,42,43,44 },       { 50,51,52,53,54 },       { 60,61,62,63,64 }     };   //First lambda expression   std::for_each(v.begin(),v.end(),     [](const std::vector<int>& w)     {       //Nested second lambda expression       std::for_each(w.begin(),w.end(),         [](const int i)         {           if (i == 42)           {             std::cout << "FOUND!\n";             return; //Terminates the second lambda expression,                     //Does not return from Test function           }         }       );     }   );   //Will get here, as the return statement only terminates   //the second lambda expression, instead of the Test function   assert(!"Should not get here"); }`
  --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Screen output:

 

  -----------
  ` FOUND!`
  -----------

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
