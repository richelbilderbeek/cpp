
 

 

 

 

 

([C++](Cpp.md)) [lambda expressions](CppLambdaExpression.md)
==============================================================

 

The use of [lambda expressions](CppLambdaExpression.md) is a technique
that can be used, depending on the [standard](CppStandard.md) used:

-   ![C++98](PicCpp98.png) [lambda expressions](CppLambdaExpression.md)
    in the [C++98](Cpp98.md) [standard](CppStandard.md)
-   ![C++11](PicCpp11.png) [lambda expressions](CppLambdaExpression.md)
    in the [C++11](Cpp11.md) [standard](CppStandard.md)

 

The speed of [C++98](Cpp98.md) [Boost.Lambda](CppLambda.md) and
[C++11](Cpp11.md) [lambda expressions](CppLambdaExpression.md) are
compared and [profiled](CppProfiling.md) (for only one simple
[function](CppFunction.md)) in [Answer of exercise \#7:
AddOne](CppExerciseAddOneAnswer.md).

 

 

 

 

![C++98](PicCpp98.png) [lambda expression](CppLambdaExpression.md) in the [C++98](Cpp98.md) [standard](CppStandard.md)
-------------------------------------------------------------------------------------------------------------------------

 

[lambda expressions](CppLambdaExpression.md) are not directly supported
by the [C++98](Cpp98.md) [standard](CppStandard.md).
[Boost.Lambda](CppLambda.md), however, can be used instead:

 

  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector> #include <boost/lambda/lambda.hpp> #include <boost/bind.hpp>  void AbsSort(std::vector<int>& v) {   std::sort(     v.begin(),     v.end(),       boost::bind(&std::labs,boost::lambda::_1)     < boost::bind(&std::labs,boost::lambda::_2) ); }  int main() {   //C++11 initializer list technique   std::vector<int> v = { 4,-3,2,-1 };   AbsSort(v);   assert(v[0] == -1);   assert(v[1] ==  2);   assert(v[2] == -3);   assert(v[3] ==  4); }`
  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

 

 

 

 

![C++11](PicCpp11.png) [lambda expression](CppLambdaExpression.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
-------------------------------------------------------------------------------------------------------------------------

 

Prefer a named function object to a [lambda
expression](CppLambdaExpression.md) if the operation requires
[comments](CppComment.md) \[3\]. Prefer a named function object to a
[lambda expression](CppLambdaExpression.md) if the operation is
generally useful \[4\]. Keep [lambda
expressions](CppLambdaExpression.md) short \[5\]. For maintainability
and correctness, be careful about capture by reference in a [lambda
expression](CppLambdaExpression.md) \[6\]. Let the
[compiler](CppCompiler.md) deduce the [return type](CppReturnType.md)
of a [lambda expression](CppLambdaExpression.md) \[7\].

 

-   [Download the Qt Creator project
    'CppLambdaExpression' (zip)](CppLambdaExpression.zip)

 

[lambda expressions](CppLambdaExpression.md) can be used for on-the-fly
[functors](CppFunctor.md):

 

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` #include <algorithm> #include <cassert> #include <vector>  void AbsSort(std::vector<int>& v) {   std::sort(     v.begin(),     v.end(),     [](const int a, const int b) { return std::abs(a) < std::abs(b); } ); }  int main() {   //C++11 initializer list technique   std::vector<int> v = { 4,-3,2,-1 };   AbsSort(v);   assert(v[0] == -1);   assert(v[1] ==  2);   assert(v[2] == -3);   assert(v[3] ==  4); }`
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

Let's zoom in at the [lambda expressions](CppLambdaExpression.md):

 

  -------------------------------------------------------------------------------------------------------------
  `   std::sort(v.begin(),v.end(),     [](const int a, const int b) { return std::abs(a) < std::abs(b); } );`
  -------------------------------------------------------------------------------------------------------------

 

The '\[\]' denotes that there is an empty capture list: the [lambda
expressions](CppLambdaExpression.md) does not need to be fed a constant
from its environment. The '(**[const](CppConst.md)**
**[int](CppInt.md)** a, **[const](CppConst.md)** **[int](CppInt.md)**
b)' are the names and data types to [lambda
expressions](CppLambdaExpression.md) works on: for
[sorting](CppSort.md) one needs two [arguments](CppArgument.md): these
are called 'a' and 'b' and are [const](CppConst.md)
[integers](CppInt.md). Finally, the '{ **[return](CppReturn.md)**
[std::abs](CppAbs.md)(a) &lt; [std::abs](CppAbs.md)(b); }' describes
how the [arguments](CppArgument.md) are used to draw a conclusion.

 

The example below does not show a capture list, the example below does:

 

  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ` //C++11 lambda expression //From http://www.richelbilderbeek.nl/CppAdd.htm void Add(std::vector<int>& v, const int x) {   std::for_each(v.begin(),v.end(),[x](int&i) { i+=x; } ); }`
  ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 

In the example above, 'x' is in the capture list: the capture list
consists of variables that are needed in the [lambda
expressions](CppLambdaExpression.md).

 

 

 

 

 

![C++11](PicCpp11.png) Program flow of a [lambda expression](CppLambdaExpression.md) in the [C++11](Cpp11.md) [standard](CppStandard.md)
-------------------------------------------------------------------------------------------------------------------------------------------

 

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

 

 

 

 

 

[Advice](CppAdvice.md)
-----------------------

 

-   Prefer [Lambda expressions](CppLambdaExpression.md) over
    [binders](CppBinder.md) \[8\]

 

 

 

 

 

[References](CppReferences.md)
-------------------------------

 

1.  [GCC page about C++0x
    support](http://gcc.gnu.org/projects/cxx0x.html)
2.  [Aaron Ballman's blog about
    C++0x](http://blog.aaronballman.com/tag/c0x)
3.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[6\] Prefer a named function object to a lambda
    if the operation requires comments'
4.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[7\] Prefer a named function object to a lambda
    if the operation is generally useful'
5.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[8\] Keep lambdas short'
6.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[9\] For maintainability and correctness, be
    careful about capture by reference'
7.  [Bjarne Stroustrup](CppBjarneStroustrup.md). The C++ Programming
    Language (4th edition). 2013. ISBN: 978-0-321-56384-2. Chapter 11.6.
    Advice. page 303: '\[10\] Let the compiler deduce the return type of
    a lambda'
8.  [Scott Meyers](CppScottMeyers.md). C++ And Beyond 2012 session:
    'Initial thoughts on Effective C++11'. 2012. 'Prefer Lambdas over
    Binders'

 

 

 

 

 

 

