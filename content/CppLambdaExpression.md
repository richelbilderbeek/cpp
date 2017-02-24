



 

 

 

 

 

([C++](Cpp.htm)) [lambda expressions](CppLambdaExpression.htm)
==============================================================

 

The use of [lambda expressions](CppLambdaExpression.htm) is a technique
that can be used, depending on the [standard](CppStandard.htm) used:

-   ![C++98](PicCpp98.png) [lambda expressions](CppLambdaExpression.htm)
    in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
-   ![C++11](PicCpp11.png) [lambda expressions](CppLambdaExpression.htm)
    in the [C++11](Cpp11.htm) [standard](CppStandard.htm)

 

The speed of [C++98](Cpp98.htm) [Boost.Lambda](CppLambda.htm) and
[C++11](Cpp11.htm) [lambda expressions](CppLambdaExpression.htm) are
compared and [profiled](CppProfiling.htm) (for only one simple
[function](CppFunction.htm)) in [Answer of exercise \#7:
AddOne](CppExerciseAddOneAnswer.htm).

 

 

 

 

![C++98](PicCpp98.png) [lambda expression](CppLambdaExpression.htm) in the [C++98](Cpp98.htm) [standard](CppStandard.htm)
-------------------------------------------------------------------------------------------------------------------------

 

[lambda expressions](CppLambdaExpression.htm) are not directly supported
by the [C++98](Cpp98.htm) [standard](CppStandard.htm).
[Boost.Lambda](CppLambda.htm), however, can be used instead:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector> #include <boost/lambda/lambda.hpp> #include <boost/bind.hpp>  void AbsSort(std::vector<int>& v) {   std::sort(     v.begin(),     v.end(),       boost::bind(&std::labs,boost::lambda::_1)     < boost::bind(&std::labs,boost::lambda::_2) ); }  int main() {   //C++11 initializer list technique   std::vector<int> v = { 4,-3,2,-1 };   AbsSort(v);   assert(v[0] == -1);   assert(v[1] ==  2);   assert(v[2] == -3);   assert(v[3] ==  4); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [lambda expression](CppLambdaExpression.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
-------------------------------------------------------------------------------------------------------------------------

 

Prefer a named function object to a [lambda
expression](CppLambdaExpression.htm) if the operation requires
[comments](CppComment.htm) \[3\]. Prefer a named function object to a
[lambda expression](CppLambdaExpression.htm) if the operation is
generally useful \[4\]. Keep [lambda
expressions](CppLambdaExpression.htm) short \[5\]. For maintainability
and correctness, be careful about capture by reference in a [lambda
expression](CppLambdaExpression.htm) \[6\]. Let the
[compiler](CppCompiler.htm) deduce the [return type](CppReturnType.htm)
of a [lambda expression](CppLambdaExpression.htm) \[7\].

 

-   [Download the Qt Creator project
    'CppLambdaExpression' (zip)](CppLambdaExpression.zip)

 

[lambda expressions](CppLambdaExpression.htm) can be used for on-the-fly
[functors](CppFunctor.htm):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  void AbsSort(std::vector<int>& v) {   std::sort(     v.begin(),     v.end(),     [](const int a, const int b) { return std::abs(a) < std::abs(b); } ); }  int main() {   //C++11 initializer list technique   std::vector<int> v = { 4,-3,2,-1 };   AbsSort(v);   assert(v[0] == -1);   assert(v[1] ==  2);   assert(v[2] == -3);   assert(v[3] ==  4); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Let's zoom in at the [lambda expressions](CppLambdaExpression.htm):

 

  -------------------------------------------------------------------------------------------------------------
  `   std::sort(v.begin(),v.end(),     [](const int a, const int b) { return std::abs(a) < std::abs(b); } );`
  -------------------------------------------------------------------------------------------------------------

 

The '\[\]' denotes that there is an empty capture list: the [lambda
expressions](CppLambdaExpression.htm) does not need to be fed a constant
from its environment. The '(**[const](CppConst.htm)**
**[int](CppInt.htm)** a, **[const](CppConst.htm)** **[int](CppInt.htm)**
b)' are the names and data types to [lambda
expressions](CppLambdaExpression.htm) works on: for
[sorting](CppSort.htm) one needs two [arguments](CppArgument.htm): these
are called 'a' and 'b' and are [const](CppConst.htm)
[integers](CppInt.htm). Finally, the '{ **[return](CppReturn.htm)**
[std::abs](CppAbs.htm)(a) &lt; [std::abs](CppAbs.htm)(b); }' describes
how the [arguments](CppArgument.htm) are used to draw a conclusion.

 

The example below does not show a capture list, the example below does:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //C++11 lambda expression //From http://www.richelbilderbeek.nl/CppAdd.htm void Add(std::vector<int>& v, const int x) {   std::for_each(v.begin(),v.end(),[x](int&i) { i+=x; } ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In the example above, 'x' is in the capture list: the capture list
consists of variables that are needed in the [lambda
expressions](CppLambdaExpression.htm).

 

 

 

 

 

![C++11](PicCpp11.png) Program flow of a [lambda expression](CppLambdaExpression.htm) in the [C++11](Cpp11.htm) [standard](CppStandard.htm)
-------------------------------------------------------------------------------------------------------------------------------------------

 

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

 

 

 

 

 

[Advice](CppAdvice.htm)
-----------------------

 

-   Prefer [Lambda expressions](CppLambdaExpression.htm) over
    [binders](CppBinder.htm) \[8\]

 

 

 

 

 

[References](CppReferences.htm)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)
2.  [Aaron Ballman's blog about
    C++0x](http://blog.aaronballman.com/tag/c0x)
3.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[6\] Prefer a named function object to a lambda
    if the operation requires comments'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[7\] Prefer a named function object to a lambda
    if the operation is generally useful'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[8\] Keep lambdas short'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[9\] For maintainability and correctness, be
    careful about capture by reference'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.htm). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[10\] Let the compiler deduce the return type of
    a lambda'
8.  [Scott Meyers](CppScottMeyers.htm). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer Lambdas over
    Binders'

 

 

 

 

 





 

[![Valid XHTML 1.0 Strict](valid-xhtml10.png){width="88"
height="31"}](http://validator.w3.org/check?uri=referer)
